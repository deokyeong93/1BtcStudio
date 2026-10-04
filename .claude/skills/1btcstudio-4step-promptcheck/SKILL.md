---
name: 1btcstudio-4step-promptcheck
description: 생성 전에 프롬프트를 검수한다. 하린·도윤·서아가 순서대로 본다. 크레딧을 쓰지 않는다. "/1btcstudio-4step-promptcheck", "프롬프트 검수", "프롬프트 검토"라고 하면 이 스킬을 쓴다.
---

# /1btcstudio-4step-promptcheck — 프롬프트 검수

하린, 도윤, 서아 순서로 본다. 서브에이전트를 부르지 않고, 이 단계만 끝내고 멈춘다. 대표 승인은 받지 않는다. `get_cost`를 호출하지 않는다. 이미지를 생성하지 않는다.

## 시작 조건
`03-production/prompts/`에 샷 파일이 있고 `credit-estimate.md`가 있어야 한다. 없으면 멈추고 `/1btcstudio-3step-prep`를 다음으로 적는다.

## 읽기
`studio/agents/direction-style.md`, `studio/agents/dialogue-style.md`, `studio/agents/casting-style.md`, 샷 파일, 서아 고정 설명문, `casting.md`, `base.md`.

## 실패
한 샷이라도 해당되면 실패다.

- `연출:`이 없다.
- 프롬프트가 `cinematic`, `natural light`, `slow push in`뿐이라 카메라·공간·빛·누가·어디서·무엇을·왜가 없다.
- 푸시인인데 시작 크기와 끝 크기 중 하나가 없다.
- 감정을 대사로 설명하고, 행동·침묵·소품으로 보여 주지 않는다.
- 감독 이름이나 다른 영화의 장면을 재현한다.
- 고정 설명문을 바꿔 적었다.
- 배우 이름, 감독 이름, 그 영화의 의상·장면이 들어 있다.
- 외형을 actor-level looks, handsome, beautiful만으로 적었다.
- 조연·단역이 주연과 같은 얼굴·의상 기준으로 적혀 실루엣으로 구분되지 않는다.
- 한 프롬프트에 동작이 둘 이상이거나, 동시 커버리지·시간 교차·장면 전환이 들어 있다.

하린은 대사와 감정, 도윤은 카메라와 동작, 서아는 얼굴·의상·장소만 본다. 실패 샷은 도윤이 한 번만 다시 쓴다. 서아 설명문이 틀리면 서아가 그 문장만 고친다.

## 기록
`03-production/prompt-review.md`를 새로 쓴다. 이미 있으면 새 섹션을 위에 추가한다. 샷별 판정과 이유. 마지막 줄은 `통과` 또는 `막힘`만 쓴다. 막힘이면 5단계로 넘기지 않는다.

유나는 `통과`/`막힘`만 잠근다. 프롬프트를 고치지 않는다. 커밋하지 않는다.

## 보고
```
단계: 4 프롬프트 검수
결론: (통과 또는 막힘)
기록: 03-production/prompt-review.md
다음: (통과면 대표가 한도를 적은 /1btcstudio-5step-generate <숫자>, 막힘이면 남은 샷)
승인 필요: 없음
```
