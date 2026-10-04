---
name: 1btcstudio
description: 다음으로 할 단계 스킬 하나만 고른다. 하린·도윤·서아·준호·유나를 병렬로 부르지 않는다. "/1btcstudio", "/1btcstudio 다음", "이어서 진행"이라고 하면 이 스킬을 쓴다.
---

# /1btcstudio — 다음 단계

진행자다. 작품 문장을 새로 쓰지 않고, 직원 문장을 고치지 않는다. 서브에이전트를 부르지 않는다. 한 번에 단계 하나만 그 스킬 파일대로 실행하고 멈춘다. 0부터 4까지 이어서 하라는 요청은 `/1btcstudio-04step-prepare`를 따른다.

## 고르기
작품 번호가 없으면 루트 `README.md` 진행 중 표의 첫 작품이다. 새 주제이고 그 주제의 판정이 `studio/series.md`에 없으면 0단계다. 진행 중 작품에서 `다음`이면 0단계를 다시 하지 않는다.

| 조건 | 스킬 |
|---|---|
| 판정 없음, 또는 새 주제 | `/1btcstudio-0step-series` |
| 판정은 있고 대본 없음 | `/1btcstudio-1step-story` |
| 대본은 있고 `script-review.md`가 `통과`가 아님 | `/1btcstudio-2step-storycheck` |
| 대본 검수 통과, 샷 프롬프트 없음 | `/1btcstudio-3step-prep` |
| 프롬프트는 있고 `prompt-review.md`가 `통과`가 아님 | `/1btcstudio-4step-promptcheck` |
| 프롬프트 검수 통과, 한도가 있고 샷이 남음 | `/1btcstudio-5step-generate` |
| 통과 샷은 있고 가편집·음성 문서가 없음 | `/1btcstudio-6step-post` |
| 편집 노트는 있고 `youtube.md` 초안이 없음 | `/1btcstudio-7step-release` |

한도가 없는데 다음이 5단계면, 그 단계로 들어가지 않고 필요한 숫자만 보고한다. 6단계는 한도가 없어도 들어가서 음성 원고와 편집 노트만 쓰고, 음성 생성 전에 멈춘다. 4단계를 건너뛰고 생성하지 않는다.

해당 스킬의 `SKILL.md`를 읽고 그대로 실행한다. 끝나면 그 스킬의 보고 형식으로 알린다. 작품 `README.md` 진행 상태는 그 스킬이 갱신한다. 커밋하지 않는다.
