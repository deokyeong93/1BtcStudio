---
name: 1btcstudio-3step-prep
description: 외모 시트·샷리스트·프롬프트·예상 크레딧을 만든다. 서아 다음 도윤이 맡는다. 영상을 생성하지 않는다. "/1btcstudio-3step-prep", "샷리스트", "프롬프트 써 줘", "예상 크레딧"이라고 하면 이 스킬을 쓴다.
---

# /1btcstudio-3step-prep — 준비

서아가 먼저 외모를 잠그고, 도윤이 샷과 프롬프트를 쓴다. 이미지를 생성하지 않는다. 서브에이전트를 부르지 않고, 이 단계만 끝내고 멈춘다. 대표에게 고르라고 묻지 않는다.

## 시작 조건
`01-development/script-review.md` 마지막 줄이 `통과`여야 한다. 아니면 멈추고 `/1btcstudio-2step-storycheck`를 다음으로 적는다.

## 읽기
- 서아: `studio/agents/casting-style.md` 전문, `studio/agents/art.md`, 대본, `characters.md`, `base.md`, 시리즈면 앞 작품 캐릭터 시트 경로
- 도윤: `studio/agents/direction-style.md` 전문, `studio/agents/dp.md`의 샷리스트 헤더, 서아가 방금 쓴 고정 설명문

direction-style.md를 읽지 않고 쓴 프롬프트는 실패다. 그 문서의 영화 장면을 다시 만들지 않는다. 감독 이름을 프롬프트에 넣지 않는다.

## 서아
`casting-style.md`를 읽지 않고 쓴 시트는 실패다. 대표에게 외모를 묻지 않고, 시안을 여러 개 만들지 않는다. 시리즈에서 잠근 시트가 있으면 그 경로를 쓴다.

- `02-preproduction/casting.md`: `캐스팅:` 비율 한 줄. 예: `캐스팅: 봉준호 50 / 크리튼 30 / 핀처 20`. 인물별 `계층:`, 함께 나올 때의 대비.
- 계층 1·2만 `02-preproduction/character-sheets/<id>.md`. 계층 1은 4장 칸, 계층 2는 17장 칸. 영어 고정 설명문 30~60단어. 배우 이름, 감독 이름, actor-level looks, handsome, beautiful로 외형을 대신하지 않는다.
- 계층 3~5는 `casting.md`에만 적는다. 단역 얼굴을 하나로 반복하지 않는다.
- `base.md` 얼굴·의상 행: 계층 1·2 시트 경로만. 승인 스틸은 5단계에서 채운다. 목소리는 비운다. 의상이 룩 A~D면 샷 파일에 룩 이름을 적게 도윤에게 넘긴다.

19장의 질문으로 한 번 확인한다. 실루엣으로 구분이 안 되거나 조연이 주연과 같은 기준이면 그 인물만 다시 쓴다.

## 도윤
`shotlist.csv` 헤더는 그대로 둔다.

```text
shot_id,scene,duration_sec,description,camera_move,characters,dialogue,model,status
```

`연출:`은 csv에 열을 추가하지 않고 `03-production/prompts/S0X.md`에 적는다. 값은 direction-style.md 15장의 문법이다. 한 샷에 둘 이상 적어도 된다. 한 작품에 문법 하나를 잠그지 않는다.

영어 프롬프트 순서:

1. 고른 문법의 카메라 종류, 공간, 빛
2. 서아 고정 설명문을 한 글자도 바꾸지 않고 복사
3. 동작 하나. 누가, 어디서, 무엇을, 왜
4. 질감

`studio/series.md`의 모델과 한 단계 아래만 `model`에 적는다. 덜 중요한 샷만 한 단계 아래다. 다른 계열은 실패다. 샷 수가 상한을 넘으면 샷을 줄인다. 넘긴 채 견적을 내지 않는다. 소리 끔, 길이 5초.

약 5초, 동작 하나, 인물 최대 2명. `cinematic`, `natural light`, `slow push in`만으로 된 문장은 쓰지 않는다. 푸시인은 핀처 문법을 골랐고 시작 크기와 끝 크기를 둘 다 적었을 때만 쓴다. 여러 팀 커버리지, 시간 교차, 장면 전환은 프롬프트에 넣지 않는다. 6단계 편집 노트로 넘긴다.

금지 목록을 길게 붙이지 않는다. 원하는 것을 긍정문으로 쓴다. 좌우는 화면 기준을 같이 쓰거나, 좌우가 없는 위치로 정한다.

`03-production/credit-estimate.md`는 `studio/higgsfield-guide.md` 2장 단가로 계산한다. 캐릭터, 장소, 첫 장면, 음성 상한, 예비 30%를 칸대로 넣는다. 시리즈 본편의 5초 단가가 가이드에 없으면 `get_cost: true`로 확인하고, 조회가 안 되면 10초 단가를 적고 `확인 필요`로 남긴다. Higgsfield MCP가 연결되어 있으면 단가만 조회한다. 이미지를 생성하지 않는다.

작품 `README.md`에서 1. 기획을 ✅, 2. 프리프로덕션을 🔄로 표시한다. 커밋하지 않는다.

## 보고
```
단계: 3 준비
결론: (샷 수, 예상 크레딧)
기록: (시트, 샷리스트, 프롬프트, credit-estimate.md)
다음: /1btcstudio-4step-promptcheck
승인 필요: 없음
```
