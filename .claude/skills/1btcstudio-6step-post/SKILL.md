---
name: 1btcstudio-6step-post
description: 통과한 대사로 내레이션 음성을 만들고 ffmpeg 가편집본을 만든다. 준호가 맡는다. 숫자 한도가 있어야 음성을 생성한다. "/1btcstudio-6step-post", "후반 <한도>", "가편집", "내레이션 음성"이라고 하면 이 스킬을 쓴다.
---

# /1btcstudio-6step-post — 후반

준호가 맡는다. 서브에이전트를 부르지 않는다. 음성과 영상은 한 번에 하나씩이다. 음악, 효과음 웹 생성, CapCut, YouTube는 하지 않는다. 커밋하지 않는다.

## 시작 조건
`shotlist.csv`에 `approved` 샷이 있어야 한다. 없으면 멈추고 5단계를 다음으로 적는다. 프롬프트 검수가 `통과`가 아니면 음성을 만들지 않는다.

## 문서 (크레딧 0)
`studio/agents/direction-style.md` 12장, 13장, 14장을 읽는다. `04-post/audio.md`와 `edit-notes.md`가 없으면 먼저 쓴다.

- 음성으로 읽을 문장은 검수를 통과한 대본 그대로다. 단어를 고치지 않는다.
- 편집 노트에는 컷 순서, 길이, 그리고 12장의 연결(시각, 사운드, 대사, 감정, 정보) 중 이번 컷에 쓰는 것을 적는다. 코미디·스릴러 컷은 13·14장도 반영한다.
- 여러 팀 커버리지와 시간 교차는 여기 적는다. 생성 프롬프트로 되돌리지 않는다.

숫자가 없으면 여기까지 쓰고 멈춘다. 다음 입력은 `후반 <숫자>`다.

## 목소리
`base.md`에 그 인물의 목소리 id가 있으면 그 id만 쓴다. 없으면 `list_voices`로 대사와 같은 언어의 프리셋을 하나 고르고, id·언어·preview 경로를 `base.md`에 적는다. 대표가 들어 볼 수 있게 preview_url을 보고한다.

로봇처럼 들리면 목소리 id를 바꾸거나 참고 음성 파일을 잠근다. 같은 id로 문장만 바꿔 다시 뽑지 않는다. 발음만 이상하면 단어를 유지한 채 한 번만 나눠 읽는다.

## 음성·가편집
한도는 입력된 숫자뿐이다. 다음 생성이 한도를 넘으면 만들지 않는다. 생성 전에 `get_cost`로 합계에 더한다.

1. `text2speech_v2`, variant `elevenlabs`, voice_type `preset`. 씬 단위로 `media/P00X_voice_S0X-<캐릭터>_v1.mp3`.
2. `ffmpeg`로 편집 노트 순서대로 approved 샷을 이어 붙이고, 씬 시작에 음성을 얹어 `media/P00X_edit_v1.mp4`를 만든다. 1080p. 자막은 굽지 않는다.
3. `04-post/subtitles/P00X_v1.srt`를 만든다. 슬로·프리즈는 `setpts`, `tpad`. ffmpeg로 어려운 글자 컷은 검은 화면 자리표시로 두고 목록에 적는다.
4. 준호가 1초 프레임과 타임라인을 편집 노트와 대조한다.

기록은 `audio.md`, `generation-log.md`, `studio/budget.md`. 작품 `README.md`의 4. 포스트를 🔄로 표시한다.

## 보고
```
단계: 6 후반
결론: (가편집 경로 또는 문서만 완료)
사용 크레딧: (이번 합계 / 한도. 문서만이면 0)
기록: (audio.md, edit-notes.md, media 경로)
다음: /1btcstudio-7step-release
승인 필요: 없음
```
