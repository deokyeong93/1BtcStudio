---
name: 1btcstudio-5step-generate
description: 검수를 통과한 프롬프트만 Higgsfield로 생성한다. 서아가 나온 샷을 검수한다. 대표가 숫자 한도를 적어야 한다. "/1btcstudio-5step-generate", "생성 <한도>", "체험 <한도>"라고 하면 이 스킬을 쓴다.
---

# /1btcstudio-5step-generate — 생성

숫자를 적기 전에는 생성하지 않는다. 서브에이전트를 부르지 않는다. 이미지·영상·음성은 한 번에 하나씩만 만들고, 끝난 뒤에 다음을 시작한다. YouTube에 올리지 않는다. 커밋하지 않는다.

## 시작 조건
둘 다 있어야 한다. 하나라도 없으면 생성하지 않고 이유만 보고한다.

- `03-production/prompt-review.md` 마지막 줄이 `통과`
- 대표가 적은 숫자 한도. `생성 120`, `체험 80`처럼 입력에 숫자가 있어야 한다. 직원의 추정은 한도가 아니다.

`체험`도 같은 통과 조건이다. 통과 전에 싼 시험을 하지 않는다.

Higgsfield MCP가 연결되어 있지 않으면 `studio/higgsfield-guide.md` 3장의 연결 방법만 알리고 멈춘다.

## 체험
주연 기준 얼굴, 사람 없는 방 1장, 샷리스트의 테스트 샷 1개만 만든다. Soul ID 학습은 하지 않는다. 영상은 그 요금제에서 되는 가장 싼 모델을 쓴다. 모델 이름과 단가는 higgsfield-guide 2장과 9장을 따른다.

## 생성
순서는 `credit-estimate.md`를 따른다. 이번 실행의 사용 합계를 더한다. 다음 생성이 한도를 넘으면 그 생성은 하지 않는다.

1. 기준 얼굴은 `soul_2`. 서아가 검수한 뒤 통과한 얼굴로 Reference Element를 만든다(이름 = 레포 id). 기본은 Element다. Soul ID 학습은 같은 얼굴을 여러 각도로 많이 뽑아야 할 때만 한다. 이미 있으면 건너뛴다. 실제 사람 사진을 학습에 쓰지 않는다.
2. 인물이 있는 첫 장면 이미지는 `gpt_image_2_5` medium에 Element 또는 기준 얼굴을 넣고, 프롬프트 첫 줄에 "참고 이미지는 얼굴·머리·의상만, 구도·배경은 따르지 말 것"을 적는다. 사람 없는 방은 `soul_2`.
3. 샷 영상은 `prompts/S0X.md`의 모델·길이와 첫 장면 이미지(`start_image`)로 `generate_video`한 뒤 `jobs_wait`로 끝날 때까지 기다린다. 테스트 샷이 통과한 뒤에 나머지를 한다.
4. 생성 전에 `get_cost: true`로 단가를 확인해 합계에 더한다. 대사·현장음이 없는 샷은 Kling `sound: off`.
5. 요금제 오류면 크레딧이 빠진 것이 아니다. Seedance 2.0 fast 720p, 그다음 mini 720p로 한 번만 바꾸고 보고에 적는다.
6. `preset_recommendation`이 오면 `declined_preset_id`로 거절하고 적은 프롬프트 그대로 생성한다.
7. 결과 URL은 `curl`로 `projects/<작품>/media/`에 받는다. 파일명은 `studio/handbook.md` 규칙. `media/`는 git에 올리지 않는다.

프롬프트는 4단계를 통과한 문장을 쓴다. 끝에 `no ○○`를 길게 붙이지 않는다. 좌우가 뒤집히면 화면 기준이나 좌우 없는 위치로 한 가지만 고쳐 다시 만든다.

## 검수
영상은 `ffmpeg`로 1초 간격 프레임을 `media/frames/<파일명>/`에 뽑는다. 서아는 시트와 다른 부위만 적는다. "느낌이 다름"은 이유가 아니다. 글자·감정 대조가 필요하면 하린이 그 샷만 본다.

redo는 도윤이 바꿀 한 가지만 적고 다시 생성한다. 한 샷이 3번 연속 redo면 그 샷은 멈추고 대안을 보고한 뒤 다음 샷으로 간다. 실존 인물로 보이면 다시 만들되, 3번이면 멈춘다.

통과한 얼굴·장소 경로는 `base.md`에 적는다. 목소리는 적지 않는다. 연출은 잠그지 않는다.

## 기록
시도마다 `prompts/S0X.md`, `generation-log.md`. 끝나면 `studio/budget.md`. 통과한 샷은 `shotlist.csv` status를 `approved`로 바꾼다. 작품 `README.md`의 3. 프로덕션을 갱신한다.

## 보고
```
단계: 5 생성
결론: (approved 수 / 전체)
사용 크레딧: (이번 합계 / 한도)
기록: (media 경로, generation-log.md, budget.md)
막힌 것: (없으면 없음)
다음: (남았으면 생성 <남은 한도>, 끝났으면 /1btcstudio-6step-post)
승인 필요: 없음
```
