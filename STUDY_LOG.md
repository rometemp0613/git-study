# Git & GitHub 학습 기록

## 학습 목표
- Git 기초부터 고급 기능까지
- GitHub 활용
- CI/CD 자동화

---

## Day 1 (2026-01-28)

### 1. Git의 3가지 영역
```
Working Directory → Staging Area → Repository
    (작업 공간)        (대기 공간)      (.git 폴더)
```
- **Working Directory**: 실제 파일을 편집하는 공간
- **Staging Area**: 다음 커밋에 포함시킬 파일들을 모아두는 곳
- **Staging이 필요한 이유**: 원하는 파일만 골라서 커밋 가능

### 2. 기본 명령어

#### git init
저장소 초기화 (`.git` 폴더 생성)
```bash
git init              # 현재 폴더를 저장소로
git init 폴더명        # 새 폴더에 저장소 생성
git init --bare       # 서버용 저장소 (작업 파일 없음)
```

#### git status
현재 상태 확인
```bash
git status            # 전체 상태
git status -s         # 짧은 형식
git status -b         # 브랜치 정보 포함
```

#### git add
Staging Area로 파일 올리기
```bash
git add 파일명         # 특정 파일
git add .             # 현재 폴더 전체
git add -A            # 저장소 전체
git add *.txt         # 패턴 매칭
git add -p            # 변경사항 하나씩 확인하며 선택
```

#### git commit
커밋 (스냅샷 저장)
```bash
git commit -m "메시지"      # 메시지와 함께 커밋
git commit                  # 편집기로 긴 메시지 작성
git commit -a -m "메시지"   # add + commit 동시에 (추적 중인 파일만)
git commit --amend          # 직전 커밋 수정
```

#### git log
커밋 히스토리 확인
```bash
git log               # 전체 로그
git log --oneline     # 한 줄로 간략히
git log -3            # 최근 3개만
git log --graph       # 브랜치 그래프
git log -p            # 변경 내용까지 표시
```

### 3. git commit --amend
직전 커밋을 수정 (새 커밋으로 교체됨)
```bash
git commit --amend -m "새 메시지"     # 메시지 수정
git commit --amend --no-edit          # 파일만 추가, 메시지 유지
```
- **주의**: 이미 push한 커밋은 amend 금지 (충돌 발생)
- amend하면 커밋 해시가 변경됨

---

## 전체 학습 로드맵

### 1단계: 기초
- [x] 3가지 영역 개념 (Working Directory, Staging Area, Repository)
- [x] init, add, commit, status, log
- [x] commit --amend
- [ ] diff - 변경사항 비교
- [ ] reset, revert - 되돌리기
- [ ] .gitignore - 추적 제외 파일 설정

### 2단계: 브랜치
- [ ] branch, switch/checkout, merge
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

## 메모
- `-m`은 message의 약자
- 커밋 해시: 각 커밋의 고유 ID (예: 1ab182a...)
- `--amend`는 수정이 아니라 교체 (해시가 바뀜)
