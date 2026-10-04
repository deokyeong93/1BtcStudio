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
- Grok 직원 채용 가이드북 [studio/agents](studio/agents/README.md), 스튜디오 스타일([studio-style](studio/agents/studio-style.md)), 직원 4명 지시문 초안(하린·도윤·서아·준호)

### 작품
- P001 파일럿 단편 착수: [projects/P001-pilot](projects/P001-pilot/) 생성 (`scripts/new-project.sh`로 생성)
