# 생성 작업 일지 (P001)

모든 AI 생성 작업을 **빠짐없이** 기록합니다(실패한 것 포함). 최신이 아래에 오도록 계속 추가합니다.
- 프롬프트가 길면 `prompts/S0X.md`를 링크합니다.
- 결과: `채택` 또는 `폐기: 이유`
- 크레딧 합계는 날마다 `studio/budget.md`에도 적습니다.

| 날짜 | 툴 | 모델 | 대상 | 프롬프트 | 시드 | 크레딧 | 결과 | 이슈 |
|---|---|---|---|---|---|---|---|---|
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 sanggu v1 | [sanggu.md](../02-preproduction/character-sheets/sanggu.md) 기준 얼굴 프롬프트 | - | 0.12 | 폐기: 점 없음, 사각 테, 고도비만, 수염 | 체험 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 eunsol v1 | [eunsol.md](../02-preproduction/character-sheets/eunsol.md) 기준 얼굴 프롬프트 | - | 0.12 | 폐기: 반묶음처럼 보임, 점 좌우 뒤집힘, 점 추가, 10대 같음 | 체험 |
| 2026-10-04 | Higgsfield MCP | soul_2 (16:9) | 방 R1 | [base-images.md](prompts/base-images.md) R1 | - | 0.12 | 채택 | CCTV 몸체가 안쪽 벽 오른쪽 모서리에 있음(도윤: 다시 만들지 않음, B 이미지에서 지울지 서아 확인) |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 sanggu v2 | v1 + 부정어(not obese, not square frames, 점 화면 오른쪽, clean-shaven) | - | 0.12 | 폐기: 사각 테, 점 없음, 비만, 수염 | 도윤 재생성 지시 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 eunsol v2 | v1 + 부정어(not a teenager, 머리 뒤로, 점 화면 왼쪽, 다른 점 없음) | - | 0.12 | 폐기: 반묶음, 점 위치 틀림·추가, 10대 같음 | 도윤 재생성 지시 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 sanggu v3 | v2에서 chubby·double chin → average build, slightly round face | - | 0.12 | 폐기: 비만, 점이 턱에, 수염. 테는 가장 가까움 | 3회 연속 redo → 멈춤 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 eunsol v3 | v2에서 묶는 높이 ear height, ponytail hanging behind her back | - | 0.12 | 폐기(본편): 정수리 묶음, 점 반대쪽, 이 보임. S05 테스트 참고로만 사용 | 3회 연속 redo → 멈춤 |
| 2026-10-04 | Higgsfield MCP | seedance_2_0_mini 480p 5초 | 샷 S05 v1 | [S05.md](prompts/S05.md), 첫 장면 이미지 없이 eunsol v3를 image_references로 | - | 2.5 | 폐기: 눈높이 앵글, 책상·열린 문이 화면에 나옴, 숄더백 → 백팩, f03 팔·가슴 뭉개짐. 인사 동작 흐름은 맞음 | 체험. 본편은 B05 첫 장면 이미지 필수 |
