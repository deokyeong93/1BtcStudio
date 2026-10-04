# 1BtcStudio

AI 툴로 단편 영상을 만드는 1인 스튜디오입니다.
이 레포는 스튜디오의 **운영 장부**입니다. 스튜디오 설립부터 툴 세팅, 작품 제작(기획~배포)까지 모든 일을 체크박스로 추적하고, 결정·작업·변경 기록을 남깁니다.

## 지금 진행 중인 작품

없음.

## 제작 파이프라인

| 단계 | 하는 일 | 툴 |
|---|---|---|
| 1. 기획 (Development) | 시리즈 판정, 시나리오, 캐릭터, 대본 검수 | Claude Code 단계 스킬 (`/1btcstudio`가 다음 단계 하나) |
| 2. 프리프로덕션 | 샷 리스트, 콘티, 캐릭터 시트 | Claude Code 직원팀, Higgsfield AI (Soul ID) |
| 3. 프로덕션 (촬영) | 샷 단위 영상 생성, Soul ID로 캐릭터 얼굴 유지 | Higgsfield AI |
| 4. 포스트프로덕션 | 음성·효과음 / 립싱크 / 음악 / 편집·색보정·믹싱 / 자막 | ElevenLabs / Higgsfield Lipsync Studio (대안 sync.so) / Suno / DaVinci Resolve 또는 CapCut / CapCut 자동자막 |
| 5. 배포 | 업로드, 공개 | YouTube |

직원 작업은 위 5단계 안에서 직렬 스킬로 진행합니다. `/1btcstudio 다음`이 안 끝난 스킬 하나만 실행합니다.

| 스킬 | 하는 일 | 크레딧 |
|---|---|---|
| `/1btcstudio-04step-prepare` | 0~4를 묻지 않고 이어서. 입력은 0단계 보충만. 생성 없음 | 0 |
| `/1btcstudio-0step-series` | 시리즈인지 새 이야기인지 | 0 |
| `/1btcstudio-1step-story` | 로그라인·시놉시스·대본·캐릭터 | 0 |
| `/1btcstudio-2step-storycheck` | 대본 검수 | 0 |
| `/1btcstudio-3step-prep` | 외모 시트·샷리스트·프롬프트·예상 크레딧 | 0 |
| `/1btcstudio-4step-promptcheck` | 프롬프트 검수 | 0 |
| `/1btcstudio-5step-generate <한도>` | Higgsfield 생성·샷 검수 | 숫자 한도 |
| `/1btcstudio-6step-post <한도>` | 내레이션 음성·가편집 | 숫자 한도 |
| `/1btcstudio-7step-release` | 제목·썸네일·설명. 업로드는 하지 않음 | 0 |

## 폴더 안내

```
README.md          ← 지금 보는 문서
CHANGELOG.md       ← 스튜디오 운영에서 무엇이 바뀌었나 (날짜순)
studio/            ← 스튜디오 운영 문서
  handbook.md        운영 규칙 (먼저 읽기)
  tools.md           툴별 용도·요금제·상업 이용 여부
  budget.md          월 구독료·크레딧 사용 내역
  licenses.md        생성물의 상업적 이용 조건
  agents/            직원 매뉴얼, 대사·연출 작법, 시리즈 장부(studio/series.md)
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
