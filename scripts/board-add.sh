#!/usr/bin/env bash
# 이슈를 프로젝트 보드에 Backlog 상태로 추가
# 사용법: scripts/board-add.sh <이슈URL>...
# 보드가 없거나 project 권한이 없으면 경고만 하고 넘어간다.
set -euo pipefail

BOARD_TITLE="1BtcStudio 보드"

owner=$(gh repo view --json owner --jq .owner.login)
num=$(gh project list --owner "$owner" --format json \
  --jq ".projects[] | select(.title==\"$BOARD_TITLE\") | .number" 2>/dev/null || true)
if [ -z "$num" ]; then
  echo "⚠ 보드 '$BOARD_TITLE'를 찾지 못함 (또는 project 권한 없음: gh auth refresh -s project) — 보드 추가 건너뜀" >&2
  exit 0
fi

pid=$(gh project view "$num" --owner "$owner" --format json --jq .id)
read -r fid oid < <(gh project field-list "$num" --owner "$owner" --format json \
  --jq '.fields[] | select(.name=="Status") | "\(.id) \(.options[] | select(.name=="Backlog") | .id)"')

for url in "$@"; do
  iid=$(gh project item-add "$num" --owner "$owner" --url "$url" --format json --jq .id)
  gh project item-edit --id "$iid" --project-id "$pid" --field-id "$fid" --single-select-option-id "$oid" >/dev/null
  echo "  보드(Backlog) 추가: $url"
done
