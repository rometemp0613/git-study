# Git의 3가지 영역

## 핵심 개념

```
Working Directory → Staging Area → Repository
    (작업 공간)        (대기 공간)      (.git 폴더)
```

### Working Directory
- 실제 파일을 편집하는 공간
- 일반 폴더처럼 보이는 곳

### Staging Area
- 다음 커밋에 포함시킬 파일들을 모아두는 곳
- `git add`로 파일을 올림

### Repository
- `.git` 폴더 안에 저장된 커밋 히스토리
- `git commit`으로 스냅샷 저장

---

## Staging이 필요한 이유

원하는 파일만 골라서 커밋 가능!

```bash
# 전체가 아닌 특정 파일만 커밋
git add file1.txt
git commit -m "file1만 커밋"
```

---

## 상태 흐름

```
[Untracked] --add--> [Staged] --commit--> [Committed]
     ↑                                         |
     └─────────────── 수정 ────────────────────┘
```
