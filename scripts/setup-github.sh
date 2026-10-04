#!/usr/bin/env bash
# GitHub 초기 설정: 라벨 → 마일스톤 → 프로젝트 보드 → 초기 이슈(M0, P001)
# 여러 번 실행해도 이미 있는 것은 건너뛴다.
# 준비: 레포 생성·push, gh auth refresh -s project
set -euo pipefail
cd "$(dirname "$0")/.."

BOARD_TITLE="1BtcStudio 보드"
M0="M0 스튜디오 설립"

repo=$(gh repo view --json nameWithOwner --jq .nameWithOwner)
owner=${repo%/*}

# project 권한 확인 (없으면 멈춘다)
if ! gh project list --owner "$owner" >/dev/null 2>&1; then
  echo "✖ project 권한이 없습니다. 먼저 실행: gh auth refresh -s project" >&2
  exit 1
fi

echo "== 1. 라벨"
while IFS='|' read -r name color desc; do
  gh label create "$name" --color "$color" --description "$desc" --force </dev/null
done <<'EOF'
stage:0-studio|0E2A47|스튜디오 설립·운영
stage:1-development|1D4E89|1단계 기획
stage:2-preproduction|2B6CB0|2단계 프리프로덕션
stage:3-production|3182CE|3단계 프로덕션(생성)
stage:4-post|4299E1|4단계 포스트프로덕션
stage:5-distribution|63B3ED|5단계 배포
type:setup|6F42C1|툴·환경 세팅
type:task|0E8A16|작업
type:decision|FBCA04|결정 기록 (studio/decisions/)
type:bug|D73A4A|툴 오류·한계
type:idea|C5DEF5|아이디어
tool:grok|5A5A5A|Grok 에이전트
tool:higgsfield|E99695|Higgsfield AI
tool:elevenlabs|F9D0C4|ElevenLabs
tool:suno|FEF2C0|Suno
tool:editor|BFD4F2|DaVinci Resolve / CapCut
tool:youtube|FF0000|YouTube
EOF

echo "== 2. 마일스톤 (P001은 4단계에서 new-project.sh가 생성)"
gh api "repos/$repo/milestones?state=all" --paginate --jq '.[].title' | grep -qxF "$M0" \
  || gh api "repos/$repo/milestones" -f title="$M0" -f description="툴 세팅, 운영 규칙, 예산·저장소 결정" >/dev/null

echo "== 3. 프로젝트 보드"
num=$(gh project list --owner "$owner" --format json --jq ".projects[] | select(.title==\"$BOARD_TITLE\") | .number")
if [ -z "$num" ]; then
  num=$(gh project create --owner "$owner" --title "$BOARD_TITLE" --format json --jq .number)
fi
gh project link "$num" --owner "$owner" --repo "$repo" >/dev/null 2>&1 || true

# Status 필드 선택지를 Backlog / In progress / Review / Done 으로 교체 (이미 그렇게 되어 있으면 건너뜀:
# 교체하면 기존 항목의 상태가 지워지기 때문)
read -r fid opts < <(gh project field-list "$num" --owner "$owner" --format json \
  --jq '.fields[] | select(.name=="Status") | "\(.id) \([.options[].name] | join(","))"')
if [ "$opts" != "Backlog,In progress,Review,Done" ]; then
  gh api graphql -f fid="$fid" -f query='
    mutation($fid: ID!) {
      updateProjectV2Field(input: {fieldId: $fid, singleSelectOptions: [
        {name: "Backlog",     color: GRAY,   description: "할 일"},
        {name: "In progress", color: YELLOW, description: "지금 하는 일"},
        {name: "Review",      color: BLUE,   description: "결과 검토"},
        {name: "Done",        color: GREEN,  description: "끝난 일"}
      ]}) { projectV2Field { ... on ProjectV2SingleSelectField { name } } }
    }' >/dev/null
fi
echo "  보드: https://github.com/users/$owner/projects/$num"

echo "== 4. 초기 이슈"
body_of() { awk 'n>=2; /^---$/ && n<2 {n++}' ".github/ISSUE_TEMPLATE/$1"; } # 앞부분 설정(---) 제거
existing=$(gh issue list --state all --limit 1000 --json title --jq '.[].title')
urls=()
while IFS='|' read -r title tmpl labels; do
  if grep -qxF "$title" <<<"$existing"; then echo "  이미 있음: $title"; continue; fi
  if [ -n "$tmpl" ]; then body=$(body_of "$tmpl"); else body=$'## 체크리스트\n- [ ] `studio/handbook.md` 처음부터 읽고 실제 작업 방식과 다른 부분 수정\n- [ ] 원본 저장소·예산 결정 결과 반영\n- [ ] 용어 풀이 보강\n- [ ] CHANGELOG 업데이트'; fi
  url=$(gh issue create --title "$title" --body "$body" --label "$labels" --milestone "$M0" </dev/null)
  urls+=("$url")
  echo "  생성: $title → $url"
done <<'EOF'
[툴 세팅] Grok|tool-setup.md|stage:0-studio,type:setup,tool:grok
[툴 세팅] Higgsfield AI (Soul ID, Lipsync Studio)|tool-setup.md|stage:0-studio,type:setup,tool:higgsfield
[툴 세팅] ElevenLabs|tool-setup.md|stage:0-studio,type:setup,tool:elevenlabs
[툴 세팅] Suno|tool-setup.md|stage:0-studio,type:setup,tool:suno
[툴 세팅] 편집 툴 (DaVinci Resolve / CapCut)|tool-setup.md|stage:0-studio,type:setup,tool:editor
[툴 세팅] YouTube 채널|tool-setup.md|stage:0-studio,type:setup,tool:youtube
[스튜디오] handbook 작성·검토||stage:0-studio,type:task
[결정] 월 예산 한도|decision.md|stage:0-studio,type:decision
[결정] 원본 미디어 저장소|decision.md|stage:0-studio,type:decision
EOF
if [ ${#urls[@]} -gt 0 ]; then scripts/board-add.sh "${urls[@]}"; fi

scripts/new-project.sh --issues P001-pilot "P001 파일럿 단편"

echo
echo "✔ 완료. 보드 화면에서 레이아웃을 Table → Board로 바꾸면 칸(Backlog/In progress/Review/Done) 형태로 보입니다."
