# 1BtcStudio

AI 툴로 단편 영상을 만드는 1인 스튜디오입니다.
이 레포는 스튜디오의 **운영 장부**입니다. 스튜디오 설립부터 툴 세팅, 작품 제작(기획~배포)까지 모든 일을 체크박스로 추적하고, 결정·작업·변경 기록을 남깁니다.

## 지금 진행 중인 작품

| 번호 | 작품 | 상태 | 폴더 |
|---|---|---|---|
| P001 | 파일럿 단편 (2~3분, 파이프라인 검증용) | 기획 전 | [projects/P001-pilot](projects/P001-pilot/) |

## 제작 파이프라인

| 단계 | 하는 일 | 툴 |
|---|---|---|
| 1. 기획 (Development) | 시나리오, 캐릭터 설정 | Grok 에이전트 |
| 2. 프리프로덕션 | 샷 리스트, 콘티, 캐릭터 시트 | Grok 에이전트 |
| 3. 프로덕션 (촬영) | 샷 단위 영상 생성, Soul ID로 캐릭터 얼굴 유지 | Higgsfield AI |
| 4. 포스트프로덕션 | 음성·효과음 / 립싱크 / 음악 / 편집·색보정·믹싱 / 자막 | ElevenLabs / Higgsfield Lipsync Studio (대안 sync.so) / Suno / DaVinci Resolve 또는 CapCut / CapCut 자동자막 |
| 5. 배포 | 업로드, 공개 | YouTube |

## 폴더 안내

```
README.md          ← 지금 보는 문서
CHANGELOG.md       ← 스튜디오 운영에서 무엇이 바뀌었나 (날짜순)
studio/            ← 스튜디오 운영 문서
  handbook.md        운영 규칙 (먼저 읽기)
  tools.md           툴별 용도·요금제·상업 이용 여부
  budget.md          월 구독료·크레딧 사용 내역
  licenses.md        생성물의 상업적 이용 조건
  agents/            Grok 직원(에이전트) 채용 가이드북·지시문 원본
  decisions/         결정 기록 (왜 그렇게 정했나)
templates/project/ ← 새 작품을 시작할 때 복사되는 틀
projects/          ← 실제 작품 (P001-pilot/ ...)
scripts/           ← 자동화 스크립트
.github/           ← 이슈 템플릿
```

## 사용법

### 처음 한 번: GitHub 설정
GitHub에 레포를 만들고 push한 뒤 아래 명령을 실행합니다. 라벨, 마일스톤, 프로젝트 보드, 초기 이슈가 만들어집니다.

```bash
gh auth refresh -s project   # 프로젝트 보드 권한 (한 번만)
scripts/setup-github.sh
```

### 새 작품 시작
```bash
scripts/new-project.sh <영문-slug> ["마일스톤 제목"]
# 예: scripts/new-project.sh rainy-cafe "P002 비 오는 카페"
```
번호(P002, P003…)가 자동으로 붙고, 템플릿이 복사되고, 단계별 이슈 5개가 만들어집니다.

### 평소 작업 흐름
1. 보드에서 이슈 하나를 골라 **In progress**로 옮긴다
2. 작업하고, 생성 작업은 `generation-log.md`에 기록한다
3. 커밋 메시지에 이슈 번호를 넣는다: `P001 샷 S03 프롬프트 수정 #12`
4. 끝나면 CHANGELOG를 갱신하고 이슈를 닫는다

자세한 규칙은 [studio/handbook.md](studio/handbook.md)에 있습니다.
