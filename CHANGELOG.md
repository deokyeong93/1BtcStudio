# 스튜디오 CHANGELOG

스튜디오 **운영**에서 무엇이 바뀌었는지 날짜순으로 기록합니다(최신이 위).
작품 안의 버전 변화는 각 작품 폴더의 `CHANGELOG.md`에 기록합니다.

분류
- **추가**: 툴·규칙·템플릿 신설
- **변경**: 요금제·워크플로우 수정
- **제거**: 툴 해지 등
- **작품**: 작품 착수·완료·공개

각 항목에는 관련 이슈(`#번호`)나 결정 문서 링크를 붙입니다. *왜* 바꿨는지는 여기에 쓰지 않고 결정 문서에 쓴 뒤 링크합니다.

---

## 2026-10-04

### 추가
- 레포 초기 구성: README, 운영 규칙([handbook](studio/handbook.md)), 툴 목록([tools](studio/tools.md)), 예산표([budget](studio/budget.md)), 라이선스 기록([licenses](studio/licenses.md)), 결정 기록 양식([decisions/0000-template](studio/decisions/0000-template.md))
- 작품 템플릿 `templates/project/` (기획 → 프리프로덕션 → 프로덕션 → 포스트 → 배포 5단계)
- 이슈 템플릿 4종: 툴 세팅 / 단계 체크리스트 / 결정 / 툴 문제
- 스크립트: `new-project.sh`(새 작품 생성), `setup-github.sh`(라벨·마일스톤·보드·초기 이슈), `board-add.sh`(이슈를 보드에 추가)
- 미디어 원본 git 제외 규칙(`.gitignore`)
- 직원팀: Claude Code 서브에이전트 5명(하린·도윤·서아·준호·유나)과 `/1btcstudio` 스킬. 직원끼리 회의해 결론을 확정하고 대표는 크레딧·공개만 승인 ([studio/agents](studio/agents/README.md))
- 스튜디오 스타일 문서 [studio-style](studio/agents/studio-style.md)
- 운영 규칙에 "AI 팀과 일하는 방식" 추가 ([handbook](studio/handbook.md))
- 툴 사용 가이드북 [tool-guide](studio/tool-guide.md) (ElevenLabs·Suno·CapCut·YouTube)
- 제작 가이드북 [higgsfield-guide](studio/higgsfield-guide.md): 주제 한 줄 → 기획 → 생성 → 소리·가편집 → 마무리 순서, 단가·요금제(2026-10-04 조회)
- 외모 원칙 변경: 남주·여주는 드라마 주연급 미남·미녀, 주변 인물은 깨끗한 호감형, 비호감 역할만 예외 ([art.md](studio/agents/art.md))
- 자동 진행 스킬 `/1btcstudio-1step`: `기획 <주제>`로 새 작품 기획부터 예상 크레딧까지, `생성 <한도>`로 Higgsfield MCP 생성·검수 자동, `후반 <한도>`로 내레이션 음성·가편집본

### 변경
- 직원 호출을 병렬 서브에이전트에서 직렬 단계 스킬 `/1btcstudio-0step-series`~`7step-release`로 바꿈. `/1btcstudio`는 다음 단계만 고른다. 대사·연출 기준은 [dialogue-style](studio/agents/dialogue-style.md), [direction-style](studio/agents/direction-style.md). 얼굴·의상·장소·목소리는 작품 `base.md`에 경로와 id만 잠근다.
- 캐릭터 디자인을 [casting-style](studio/agents/casting-style.md)로 교체. 주연급 미남·미녀와 주변 호감형 원칙은 더 이상 쓰지 않음.
- `/1btcstudio-04step-prepare`: 0단계 보충만으로 4단계 프롬프트 검수까지 직렬 진행. 생성은 하지 않음.
- 0단계에 예산 종류(테스트, 예고·단편, 시리즈 본편)를 둔다. 판정, 종류, 음악·효과음은 매번 선택지로 묻는다.

### 제거
- P001 파일럿 단편 폴더 삭제. 옛 프롬프트로 만든 대본·시트·샷·예고편을 폐기.

### 작품
- P001 파일럿 단편을 착수했다가 같은 날 폴더를 삭제함.
