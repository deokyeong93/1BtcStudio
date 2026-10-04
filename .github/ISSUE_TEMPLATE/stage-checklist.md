---
name: 단계 체크리스트
about: 작품의 제작 단계 1개를 진행 (scripts/new-project.sh가 자동 생성)
title: "P00X [n/5] "
labels: type:task
---

<!-- 해당 단계 섹션 하나만 남기고 나머지는 지우세요. 라벨 stage:* 도 붙이세요. -->

### 1. 기획 (stage:1-development)
- [ ] 로그라인 (`01-development/logline.md`)
- [ ] 시놉시스 (`01-development/synopsis.md`)
- [ ] 캐릭터 설정 (`01-development/characters.md`)
- [ ] 대본 (`01-development/script.md`) → 작품 CHANGELOG `대본 v1`
- [ ] 러닝타임 확정 (대략적인 샷 수 포함, README 개요에 기록)
- [ ] 단계 회고 코멘트 (잘된 점 / 문제 / 다음에 바꿀 점)
- [ ] CHANGELOG 업데이트

### 2. 프리프로덕션 (stage:2-preproduction)
- [ ] 캐릭터 시트 이미지 (원본은 외부 저장소, 정보는 `02-preproduction/character-sheets/`)
- [ ] Higgsfield Soul ID 등록 (캐릭터별)
- [ ] 샷 리스트 (`02-preproduction/shotlist.csv`, 콘티는 `storyboard.md`) → `샷리스트 v1`
- [ ] 샷별 프롬프트 초안 (`03-production/prompts/S01.md` …)
- [ ] 캐릭터별 음성 톤 결정 (ElevenLabs 보이스, `04-post/audio.md`)
- [ ] 단계 회고 코멘트 (잘된 점 / 문제 / 다음에 바꿀 점)
- [ ] CHANGELOG 업데이트

### 3. 프로덕션 (stage:3-production)
- [ ] 샷 생성 (Higgsfield, `shotlist.csv` status: todo → generating → review)
- [ ] 샷별 검수 (review → approved 또는 redo)
- [ ] 재생성 기록 (모든 시도를 `03-production/generation-log.md`에, 크레딧은 `studio/budget.md`에)
- [ ] 전 샷 approved
- [ ] 단계 회고 코멘트 (잘된 점 / 문제 / 다음에 바꿀 점)
- [ ] CHANGELOG 업데이트

### 4. 포스트프로덕션 (stage:4-post)
> ⚠️ **순서가 중요합니다.** 위에서부터 차례대로 진행합니다. 특히 음악은 편집 길이가 확정된 뒤에 만듭니다.
- [ ] 1) 대사 음성 생성 (ElevenLabs, `04-post/audio.md`)
- [ ] 2) 립싱크 (Higgsfield Lipsync Studio, 안 되면 sync.so)
- [ ] 3) 편집: 컷 연결 → `편집본 v1` (길이 확정)
- [ ] 4) 색보정
- [ ] 5) 음악 (Suno, 확정된 길이에 맞춰, `04-post/music.md`)
- [ ] 6) 효과음 (ElevenLabs)
- [ ] 7) 믹싱 (대사 > 효과음 > 음악)
- [ ] 8) 자막 (CapCut 자동 자막 → 오타 수정 → `.srt` 저장)
- [ ] 9) 최종 내보내기 → `최종본`
- [ ] 단계 회고 코멘트 (잘된 점 / 문제 / 다음에 바꿀 점)
- [ ] CHANGELOG 업데이트

### 5. 배포 (stage:5-distribution)
- [ ] 제목·설명·태그 (`05-distribution/youtube.md`)
- [ ] 썸네일
- [ ] YouTube "변경되었거나 합성된 콘텐츠"(AI) 공개 표시
- [ ] 음악·음성 라이선스 재확인 (`studio/licenses.md`)
- [ ] 업로드 (비공개로 확인 → 공개)
- [ ] 회고 작성 (`retrospective.md`)
- [ ] 단계 회고 코멘트 (잘된 점 / 문제 / 다음에 바꿀 점)
- [ ] CHANGELOG 업데이트 (작품 `YouTube 공개` + 루트 "작품")
