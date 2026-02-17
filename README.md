> **⚠️ 다른 컴퓨터에서 작업 시 주의사항 (2026-02-16)**
>
> 이 레포는 GitHub contributor 캐시 정리를 위해 **삭제 후 재생성**되었습니다.
> 다른 컴퓨터에 기존 clone이 있다면 **삭제 후 새로 clone** 해주세요:
> ```bash
> rm -rf git-study
> git clone https://github.com/rometemp0613/git-study.git
> ```
> **이 안내는 모든 컴퓨터에서 새로 clone한 후 삭제해주세요.**

# Git & GitHub 학습 기록

**학습 방식**: Claude와 함께 실습 중심 학습
**학습 시작일**: 2026-01-28

**학습 목표**:
- Git 기초부터 고급 기능까지
- GitHub 활용
- CI/CD 자동화

---

## 진도 체크리스트

### 1단계: 기초

- [x] **3가지 영역 개념**
  - 핵심: Working Directory, Staging Area, Repository
- [x] **init, add, commit, status, log**
  - 핵심: 저장소 생성, 스테이징, 커밋, 상태 확인, 히스토리
- [x] **commit --amend**
  - 핵심: 직전 커밋 수정 (메시지, 파일 추가)
- [x] **diff - 변경사항 비교**
  - 핵심: diff, diff --staged, diff HEAD
- [x] **reset, revert - 되돌리기**
  - 핵심: reset --soft/--mixed/--hard, revert (커밋 취소)
- [x] **.gitignore - 추적 제외 파일 설정**
  - 핵심: 패턴 문법, 전역 gitignore
- [x] **HEAD 개념**
  - 핵심: 현재 위치 포인터, HEAD~1, HEAD^
- [x] **Detached HEAD**
  - 핵심: 브랜치 없이 커밋 직접 체크아웃, 임시 작업
- [x] **restore - 변경사항 취소**
  - 핵심: restore, restore --staged (reset/revert보다 간단)

### 2단계: 브랜치

- [x] **branch, switch/checkout, merge**
  - 핵심: 브랜치 생성/전환/병합, fast-forward vs 3-way merge
- [x] **rebase - 커밋 히스토리 정리**
  - 핵심: rebase, interactive rebase (squash, reword, drop)
- [x] **conflict 해결 - 충돌 상황 대처**
  - 핵심: 충돌 마커, 수동 해결, merge --abort
- [x] **cherry-pick - 특정 커밋만 가져오기**
  - 핵심: cherry-pick <commit>, 다른 브랜치에서 커밋 복사

### 3단계: 원격 저장소 & GitHub

- [x] **remote, push, pull, fetch, clone**
  - 핵심: 원격 저장소 연결, 업로드/다운로드, fetch vs pull
- [x] **원격 추적 브랜치**
  - 핵심: origin/main의 정체, upstream 설정
- [x] **Pull Request**
  - 핵심: PR 생성, 리뷰, 머지, 협업 워크플로우
- [x] **브랜치 보호 규칙**
  - 핵심: main 직접 push 막기, 리뷰 필수 설정
- [ ] **Issue & Project**
  - 핵심: 이슈 생성, 라벨, 마일스톤, 프로젝트 보드
- [ ] **Fork**
  - 핵심: 오픈소스 기여 방식, upstream 동기화
- [ ] **README & Markdown**
  - 핵심: 프로젝트 문서 작성, 마크다운 문법

### 4단계: 고급 기능

- [ ] **stash - 작업 임시 저장**
  - 핵심: stash, stash pop, stash list, stash apply
- [ ] **tag - 버전 표시**
  - 핵심: tag, annotated tag, tag push
- [ ] **시맨틱 버전 관리**
  - 핵심: v1.0.0 규칙 (MAJOR.MINOR.PATCH)
- [ ] **reflog - 실수로 삭제한 커밋 복구**
  - 핵심: reflog, 삭제된 브랜치/커밋 복구
- [ ] **hooks - 커밋 전후 자동 실행 스크립트**
  - 핵심: pre-commit, post-commit, .git/hooks/
- [ ] **submodule - 저장소 안의 저장소**
  - 핵심: submodule add, update, 의존성 관리
- [ ] **Git Alias - 자주 쓰는 명령어 단축키**
  - 핵심: git config --global alias.co checkout

### 5단계: 협업 전략

- [ ] **Git Flow**
  - 핵심: main, develop, feature, release, hotfix 브랜치
- [ ] **GitHub Flow**
  - 핵심: 간소화된 전략, main + feature 브랜치
- [ ] **Conventional Commits**
  - 핵심: feat, fix, docs, style, refactor, test, chore

### 6단계: CI/CD 자동화

- [ ] **GitHub Actions 기초**
  - 핵심: 워크플로우 YAML, on/jobs/steps
- [ ] **자동 테스트**
  - 핵심: PR마다 테스트 실행, status check
- [ ] **자동 배포**
  - 핵심: main 머지 시 배포, secrets 관리
- [ ] **린트/포매팅**
  - 핵심: 코드 품질 자동 검사, prettier, eslint

### 7단계: Git 내부 구조 (심화)

- [ ] **Git 객체**
  - 핵심: blob, tree, commit 객체의 관계
- [ ] **해시 함수**
  - 핵심: SHA-1, 커밋 ID의 원리
- [ ] **.git 폴더 탐험**
  - 핵심: refs, objects, HEAD 파일 구조

---

## 학습 일지

| 날짜 | 주제 | 주요 내용 | 비고 |
|------|------|----------|------|
| 2026-01-28 | 1단계 기초 | 3가지 영역, init/add/commit/status/log, amend, 브랜치 기초 | 완료 |
| 2026-01-30 | 1단계 기초 | diff, reset, revert, .gitignore | 완료 |
| 2026-01-31 | 2단계 브랜치 | rebase, interactive rebase (squash, reword, drop), 충돌 해결 | 완료 |
| 2026-02-07 | 1단계 기초 | HEAD 개념, HEAD~n, HEAD^, .git/HEAD 파일 | 완료 |
| 2026-02-07 | 1단계 기초 | Detached HEAD, checkout vs switch/restore 정리 | 완료 |
| 2026-02-12 | 1단계 기초 | restore, restore --staged, --source, restore vs reset vs revert | 1단계 완료! |
| 2026-02-13 | 2단계 브랜치 | cherry-pick, --no-commit, --continue/--abort, 충돌 해결 | 2단계 완료! |
| 2026-02-16 | 3단계 원격 | remote, push, pull, fetch, clone, 원격 추적 브랜치 | |
| 2026-02-17 | 3단계 원격 | Pull Request 생성, 리뷰, 머지 (merge/squash/rebase) | |
| 2026-02-18 | 3단계 원격 | 브랜치 보호 규칙, Ruleset, fetch --prune | |

---

## 진행 현황

- **총 항목**: 34개
- **완료**: 17개
- **진행률**: 50%

---

## 디렉토리 구조

```
study/git/
├── README.md              # 진도 체크리스트 (현재 파일)
├── CLAUDE.md              # Claude 학습 지침서
├── logs/                  # 날짜별 학습 일지
│   ├── 2026-01-28.md
│   ├── 2026-01-30.md
│   └── 2026-01-31.md
└── notes/                 # 단계별 학습 노트
    ├── 1-basics/
    ├── 2-branching/
    ├── 3-remote/
    ├── 4-advanced/
    ├── 5-collaboration/
    ├── 6-cicd/
    └── 7-internals/
```

---

## GitHub 저장소

**URL**: https://github.com/rometemp0613/git-study

### 학습 후 반드시 실행할 것 (PR 필수!)

> ⚠️ main 브랜치에 보호 규칙이 적용되어 있어 직접 push 불가

```bash
git switch -c docs/학습주제
git add -A
git commit -m "docs: 학습 내용 추가"
git push -u origin docs/학습주제
gh pr create --title "docs: 학습 내용 추가" --body "설명"
gh pr merge --squash
git switch main
git pull
```

### 다른 컴퓨터에서 받아오기

```bash
git clone https://github.com/rometemp0613/git-study.git
```

### 최신 내용 동기화

```bash
git pull
```
