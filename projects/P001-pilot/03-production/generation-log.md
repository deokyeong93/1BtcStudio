# 생성 작업 일지 (P001)

모든 AI 생성 작업을 **빠짐없이** 기록합니다(실패한 것 포함). 최신이 아래에 오도록 계속 추가합니다.
- 프롬프트가 길면 `prompts/S0X.md`를 링크합니다.
- 결과: `채택` 또는 `폐기: 이유`
- 크레딧 합계는 날마다 `studio/budget.md`에도 적습니다.

| 날짜 | 툴 | 모델 | 대상 | 프롬프트 | 시드 | 크레딧 | 결과 | 이슈 |
|---|---|---|---|---|---|---|---|---|
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 sanggu v1 | [sanggu.md](../02-preproduction/character-sheets/sanggu.md) 기준 얼굴 프롬프트 | - | 0.12 | 폐기: 점 없음, 사각 테, 고도비만, 수염 | 체험 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 eunsol v1 | [eunsol.md](../02-preproduction/character-sheets/eunsol.md) 기준 얼굴 프롬프트 | - | 0.12 | 폐기: 반묶음처럼 보임, 점 좌우 뒤집힘, 점 추가, 10대 같음 | 체험 |
| 2026-10-04 | Higgsfield MCP | soul_2 (16:9) | 방 R1 | [base-images.md](prompts/base-images.md) R1 | - | 0.12 | 채택 | 카메라 몸체가 안쪽 벽 오른쪽 모서리에 있음(도윤: 다시 만들지 않음, B 이미지에서 지울지 서아 확인. → 서아: 폐기, 화면 변경으로 v4와 다른 방) |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 sanggu v2 | v1 + 부정어(not obese, not square frames, 점 화면 오른쪽, clean-shaven) | - | 0.12 | 폐기: 사각 테, 점 없음, 비만, 수염 | 도윤 재생성 지시 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 eunsol v2 | v1 + 부정어(not a teenager, 머리 뒤로, 점 화면 왼쪽, 다른 점 없음) | - | 0.12 | 폐기: 반묶음, 점 위치 틀림·추가, 10대 같음 | 도윤 재생성 지시 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 sanggu v3 | v2에서 chubby·double chin → average build, slightly round face | - | 0.12 | 폐기: 비만, 점이 턱에, 수염. 테는 가장 가까움 | 3회 연속 redo → 멈춤 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) | 기준 얼굴 eunsol v3 | v2에서 묶는 높이 ear height, ponytail hanging behind her back | - | 0.12 | 폐기(본편): 정수리 묶음, 점 반대쪽, 이 보임. S05 테스트 참고로만 사용 | 3회 연속 redo → 멈춤 |
| 2026-10-04 | Higgsfield MCP | seedance_2_0_mini 480p 5초 | 샷 S05 v1 | [S05.md](prompts/S05.md), 첫 장면 이미지 없이 eunsol v3를 image_references로 | - | 2.5 | 폐기: 눈높이 앵글, 책상·열린 문이 화면에 나옴, 숄더백 → 백팩, f03 팔·가슴 뭉개짐. 인사 동작 흐름은 맞음 | 체험. 본편은 B05 첫 장면 이미지 필수 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) ×2 | 기준 얼굴 eunsol 외모 v2 (v4a, v4b) | [eunsol.md](../02-preproduction/character-sheets/eunsol.md) 기준 얼굴 프롬프트 v2 | - | 0.24 | 폐기: 점이 눈 앞머리 옆, 잔머리 초과, v4a 아이라인·볼 터치·이 보임, v4b 정수리 번 | 서아: 끝 부정어 문장이 금지한 것을 불러옴 → 삭제 |
| 2026-10-04 | Higgsfield MCP | soul_2 (3:4) ×2 | 기준 얼굴 eunsol 외모 v2 (v5a, v5b) | v4에서 끝 부정어 문장("Not a teenager … no blush.") 삭제 | - | 0.24 | v5a 채택(B05 테스트용, 결함 기록: 잔머리 3가닥 이상, 점이 화면 왼쪽으로 치우침, 입술 진함·옅은 볼 터치, 목에 점) / v5b 폐기: 앞머리가 눈을 가림, 점 없음, 붉은 섀도, 나이 들어 보임 | 대표가 참고 사진 배우와 닮음 여부 직접 확인 필요 |
| 2026-10-04 | Higgsfield MCP | soul_2 (16:9) ×2 | 첫 장면 B05 v1a, v1b | [base-images.md](prompts/base-images.md) B05, eunsol v5a를 참고 이미지로 | - | 0.24 | 폐기: 참고 이미지(증명사진) 구도를 따라감(얼굴 클로즈업, 방·가방 없음) | soul_2는 참고 이미지 1장만 받음 |
| 2026-10-04 | Higgsfield MCP | nano_banana_pro(실제 nano_banana_2) / gpt_image_2_5 medium | 첫 장면 B05 v2a, v2b | B05 + "참고 이미지는 얼굴만, 구도는 따르지 말 것", eunsol v5a를 image_references로 | - | 2 + 0.5 | v2b 채택(결함 기록: 가방이 본인 오른쪽 어깨, 오른쪽 벽 화이트보드, 조금 어려 보임) / v2a 폐기: 한 손, 나이 들어 보임, 방이 너무 낡음 | 얼굴 참고 + 새 구도에는 gpt_image_2_5가 맞음 |
| 2026-10-04 | Higgsfield MCP | kling3_0 pro 10초 | 샷 S05 | - | - | 0 | 실패: "Requires plus plan or higher" | Basic에서는 Kling 3.0 생성 불가(단가 조회만 됨) |
| 2026-10-04 | Higgsfield MCP | seedance_2_0 fast 720p 10초 (소리 켜짐) | 샷 S05 v2 | [S05.md](prompts/S05.md), B05 v2b를 start_image로 | - | 25 | 폐기: 0~8초가 B05와 다른 낮은 앵글, 8~9초에 B05 구도로 컷 튐. 인사 동작·얼굴·가방은 통과 | Kling 3.0 대신 Basic에서 되는 모델 |
| 2026-10-04 | Higgsfield MCP | seedance_2_0 fast 720p 10초, 소리 끔, 비율 auto | 샷 S05 v3 | v2 + 첫 줄 "첫 프레임 그대로 시작, 카메라 고정, 컷 없음", generate_audio false, aspect_ratio auto | - | 25 | **채택**(서아 approved). 기록: 잔머리 몇 가닥, 화이트보드 모서리 자국 | 파일 media/P001_shot_S05_v3.mp4 |
