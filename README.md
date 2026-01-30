# Git & GitHub 학습 기록

**학습 시작일**: 2026-01-28

**학습 목표**:
- Git 기초부터 고급 기능까지
- GitHub 활용
- CI/CD 자동화

---

## 진도 체크리스트

### 1단계: 기초
- [x] 3가지 영역 개념 (Working Directory, Staging Area, Repository)
- [x] init, add, commit, status, log
- [x] commit --amend
- [x] diff - 변경사항 비교
- [x] reset, revert - 되돌리기
- [x] .gitignore - 추적 제외 파일 설정

### 2단계: 브랜치
- [x] branch, switch/checkout, merge
- [ ] rebase - 커밋 히스토리 정리
- [ ] conflict 해결 - 충돌 상황 대처
- [ ] cherry-pick - 특정 커밋만 가져오기

### 3단계: 원격 저장소 & GitHub
- [ ] remote, push, pull, fetch, clone
- [ ] Pull Request - 협업의 핵심
- [ ] Issue & Project - 작업 관리
- [ ] Fork - 오픈소스 기여 방식

### 4단계: 고급 기능
- [ ] stash - 작업 임시 저장
- [ ] tag - 버전 표시
- [ ] hooks - 커밋 전후 자동 실행 스크립트
- [ ] submodule - 저장소 안의 저장소

### 5단계: 협업 전략
- [ ] Git Flow - 브랜치 전략
- [ ] GitHub Flow - 간소화된 전략
- [ ] Conventional Commits - 커밋 메시지 규칙

### 6단계: CI/CD 자동화
- [ ] GitHub Actions 기초 - 워크플로우 작성
- [ ] 자동 테스트 - PR마다 테스트 실행
- [ ] 자동 배포 - main 머지 시 배포
- [ ] 린트/포매팅 - 코드 품질 자동 검사

---

## 학습 일지

| 날짜 | 주제 | 주요 내용 | 비고 |
|------|------|----------|------|
| 2026-01-28 | 1단계 기초 | 3가지 영역, init/add/commit/status/log, amend, 브랜치 기초 | 완료 |
| 2026-01-30 | 1단계 기초 | diff, reset, revert, .gitignore | 1단계 완료 |

---

## 디렉토리 구조

```
git공부/
├── README.md              # 진도 체크리스트 (현재 파일)
├── logs/                  # 날짜별 학습 일지
│   ├── 2026-01-28.md
│   └── 2026-01-30.md
└── notes/                 # 단계별 학습 노트
    ├── 1-basics/
    ├── 2-branching/
    ├── 3-remote/
    ├── 4-advanced/
    ├── 5-collaboration/
    └── 6-cicd/
```

---

## GitHub 저장소

**URL**: https://github.com/rometemp0613/git-study

### 학습 후 반드시 실행할 것

학습 내용을 추가하거나 수정한 후에는 아래 명령어를 실행해서 GitHub에 업로드해야 합니다.

```bash
cd "/Volumes/Extreme SSD/git공부"
git add -A
git commit -m "docs: 학습 내용 추가"
git push
```

### 다른 컴퓨터에서 받아오기

```bash
git clone https://github.com/rometemp0613/git-study.git
```

### 최신 내용 동기화

```bash
git pull
```

