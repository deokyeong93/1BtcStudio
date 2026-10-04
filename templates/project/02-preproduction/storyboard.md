# 콘티 (스토리보드)

샷 리스트(`shotlist.csv`)의 샷을 순서대로 놓고, 화면에 **무엇이 어떻게 보이는지** 적습니다.
그림이 있으면 원본은 외부 저장소에 두고 링크합니다.

## shotlist.csv 작성법

| 컬럼 | 의미 | 예 |
|---|---|---|
| `shot_id` | 샷 번호. `S01`, `S02` … (두 자리) | `S03` |
| `scene` | 씬 번호 (대본의 씬과 같게) | `1` |
| `duration_sec` | 샷 길이(초). 생성 모델이 지원하는 길이에 맞춤 | `5` |
| `description` | 화면 내용. Higgsfield 프롬프트의 바탕이 됨 | `카페 주인이 창밖을 본다` |
| `camera_move` | 카메라 움직임 | `static`, `slow push in`, `pan left`, `dolly out`, `handheld` |
| `characters` | 나오는 캐릭터 (Soul ID 이름, 여러 명이면 `;`로 구분) | `mina;jun` |
| `dialogue` | 이 샷의 대사 (있으면 립싱크 필요) | `"오늘도 안 오네"` |
| `model` | 생성에 쓸(쓴) 모델 | Higgsfield 모델명 |
| `status` | 진행 상태 | 아래 표 |

| status | 의미 |
|---|---|
| `todo` | 아직 생성 안 함 |
| `generating` | 생성 중 |
| `review` | 생성됨, 검수 대기 |
| `approved` | 채택 (편집에 사용) |
| `redo` | 다시 생성 필요 (이유는 generation-log에) |

> 쉼표가 들어가는 칸은 큰따옴표로 감쌉니다. 엑셀·구글 시트·Numbers에서 열어 편집해도 됩니다.

---

## S01
- 화면:
- 분위기·조명:
- 참고 이미지:
