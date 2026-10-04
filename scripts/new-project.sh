#!/usr/bin/env bash
# 새 작품 시작: templates/project 복사 + 번호 자동 부여 + 단계별 이슈 5개 생성
#
# 사용법:
#   scripts/new-project.sh <slug> ["마일스톤 제목"] [--no-issues]
#     예) scripts/new-project.sh rainy-cafe "P002 비 오는 카페"
#   scripts/new-project.sh --issues <P00X-slug> ["마일스톤 제목"]
#     폴더는 이미 있고 이슈만 만들 때 (예: 레포 연결 전에 폴더를 만든 경우)
set -euo pipefail
cd "$(dirname "$0")/.."

CHECKLIST=.github/ISSUE_TEMPLATE/stage-checklist.md

create_issues() { # $1=작품 폴더명(P001-pilot) $2=마일스톤 제목
  local dir=$1 id=${1%%-*} ms=$2 repo existing n stage name tools title body url urls=()
  if ! repo=$(gh repo view --json nameWithOwner --jq .nameWithOwner 2>/dev/null); then
    echo "⚠ GitHub 레포에 연결되지 않아 이슈 생성을 건너뜁니다."
    echo "  레포 연결 후 실행: scripts/new-project.sh --issues $dir \"$ms\""
    return 0
  fi

  # 마일스톤이 없으면 만든다 (닫힌 것까지 확인)
  gh api "repos/$repo/milestones?state=all" --paginate --jq '.[].title' | grep -qxF "$ms" \
    || gh api "repos/$repo/milestones" -f title="$ms" >/dev/null

  existing=$(gh issue list --state all --limit 1000 --json title --jq '.[].title')
  while IFS='|' read -r n stage name tools; do
    title="$id [$n/5] $name"
    if grep -qxF "$title" <<<"$existing"; then echo "  이미 있음: $title"; continue; fi
    # 이슈 템플릿에서 해당 단계 섹션만 잘라 본문으로 쓴다 (체크리스트 원본은 한 곳)
    body="작품 폴더: \`projects/$dir/\`"$'\n\n'$(awk -v k="stage:$stage" '/^### /{p=index($0,k)>0} p' "$CHECKLIST")
    url=$(gh issue create --title "$title" --body "$body" \
      --label "stage:$stage,type:task,$tools" --milestone "$ms" </dev/null)
    urls+=("$url")
    echo "  생성: $title → $url"
  done <<'EOF'
1|1-development|기획|tool:grok
2|2-preproduction|프리프로덕션|tool:grok,tool:higgsfield,tool:elevenlabs
3|3-production|프로덕션|tool:higgsfield
4|4-post|포스트프로덕션|tool:elevenlabs,tool:higgsfield,tool:suno,tool:editor
5|5-distribution|배포|tool:youtube
EOF

  if [ ${#urls[@]} -gt 0 ]; then scripts/board-add.sh "${urls[@]}"; fi
}

if [ "${1:-}" = "--issues" ]; then
  dir=${2:?사용법: $0 --issues <P00X-slug> [\"마일스톤 제목\"]}
  [ -d "projects/$dir" ] || { echo "폴더 없음: projects/$dir" >&2; exit 1; }
  create_issues "$dir" "${3:-${dir%%-*} ${dir#*-}}"
  exit 0
fi

noissues=0; args=()
for a in "$@"; do
  if [ "$a" = "--no-issues" ]; then noissues=1; else args+=("$a"); fi
done
set -- ${args[@]+"${args[@]}"}

slug=${1:?사용법: $0 <slug> [\"마일스톤 제목\"] [--no-issues]}
[[ $slug =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]] || { echo "slug는 영문 소문자·숫자·하이픈만: $slug" >&2; exit 1; }

# 다음 번호: projects/P###-* 중 가장 큰 번호 + 1
last=$(ls -d projects/P[0-9][0-9][0-9]-* 2>/dev/null | sed -E 's#.*/P([0-9]{3})-.*#\1#' | sort -n | tail -1 || true)
num=$(printf 'P%03d' $((10#${last:-0} + 1)))
dir="$num-$slug"

cp -R templates/project "projects/$dir"
find "projects/$dir" -type f -exec perl -pi -e "s/P00X/$num/g" {} +
echo "✔ projects/$dir 생성"

if [ $noissues -eq 0 ]; then create_issues "$dir" "${2:-$num $slug}"; fi

echo
echo "다음 할 일:"
echo "  1. projects/$dir/README.md 에 작품 제목 쓰기"
echo "  2. 루트 CHANGELOG.md \"작품\"에 착수 기록, README.md 진행 중 작품 표에 추가"
echo "  3. 커밋: git add projects/$dir && git commit -m \"$num 작품 착수\""
