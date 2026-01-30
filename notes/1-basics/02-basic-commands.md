# 기본 명령어

## git init

저장소 초기화 (`.git` 폴더 생성)

```bash
git init              # 현재 폴더를 저장소로
git init 폴더명        # 새 폴더에 저장소 생성
git init --bare       # 서버용 저장소 (작업 파일 없음)
```

---

## git status

현재 상태 확인

```bash
git status            # 전체 상태
git status -s         # 짧은 형식
git status -b         # 브랜치 정보 포함
```

### 짧은 형식 읽는 법
```
M  file.txt    # 왼쪽 M = staged
 M file.txt    # 오른쪽 M = unstaged (modified)
?? file.txt    # untracked
!! file.txt    # ignored
```

---

## git add

Staging Area로 파일 올리기

```bash
git add 파일명         # 특정 파일
git add .             # 현재 폴더 전체
git add -A            # 저장소 전체
git add *.txt         # 패턴 매칭
git add -p            # 변경사항 하나씩 확인하며 선택
```

---

## git commit

커밋 (스냅샷 저장)

```bash
git commit -m "메시지"      # 메시지와 함께 커밋
git commit                  # 편집기로 긴 메시지 작성
git commit -a -m "메시지"   # add + commit 동시에 (추적 중인 파일만)
git commit --amend          # 직전 커밋 수정
```

---

## git log

커밋 히스토리 확인

```bash
git log               # 전체 로그
git log --oneline     # 한 줄로 간략히
git log -3            # 최근 3개만
git log --graph       # 브랜치 그래프
git log -p            # 변경 내용까지 표시
```

---

## git commit --amend

직전 커밋을 수정 (새 커밋으로 교체됨)

```bash
git commit --amend -m "새 메시지"     # 메시지 수정
git commit --amend --no-edit          # 파일만 추가, 메시지 유지
```

### 주의사항
- 이미 push한 커밋은 amend 금지! (충돌 발생)
- amend하면 커밋 해시가 변경됨
