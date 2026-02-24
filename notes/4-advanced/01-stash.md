# stash - 작업 임시 저장

## 핵심 개념

### stash란?
- 커밋하기엔 애매한 작업 중인 변경사항을 **임시 보관**하는 기능
- stash하면 워킹 디렉토리가 깨끗해짐 → 브랜치 전환 가능
- **브랜치에 종속되지 않음** — 어디서든 꺼낼 수 있음

### 기본 흐름

```
작업 중 (변경사항 있음)
    │
    ▼
git stash          ← 서랍에 넣기
    │
    ▼
다른 작업 수행      ← 브랜치 전환, 버그 수정 등
    │
    ▼
git stash pop      ← 서랍에서 꺼내기
```

## 명령어 정리

| 명령어 | 설명 |
|--------|------|
| `git stash` | 변경사항 임시 저장 (tracked 파일만) |
| `git stash -u` | untracked 파일도 포함해서 stash |
| `git stash -m "메시지"` | 설명 달아서 저장 |
| `git stash pop` | 가장 최근 stash 꺼내고 **목록에서 삭제** |
| `git stash apply` | 가장 최근 stash 꺼내고 **목록에 유지** |
| `git stash list` | 저장된 stash 목록 보기 |
| `git stash drop stash@{n}` | 특정 stash 삭제 |
| `git stash clear` | 모든 stash 삭제 |

## pop vs apply

```
pop   = apply + drop  (꺼내고 삭제)
apply = 꺼내기만      (목록에 남아있음)
```

- **pop**: 대부분의 경우 (한 번 쓰고 버릴 때)
- **apply**: 같은 stash를 여러 브랜치에 적용하고 싶을 때

## stash 번호 (stash@{n})

- `stash@{0}`: 가장 최근 stash
- `stash@{1}`: 그 다음
- 숫자가 클수록 오래된 것

```bash
git stash apply stash@{1}   # 두 번째 stash 적용
git stash drop stash@{2}    # 세 번째 stash 삭제
```

## 주의사항

- 기본 `git stash`는 **untracked 파일 무시** → `-u` 옵션 필요
- 같은 파일이 이미 수정된 상태에서 stash apply하면 **충돌** 발생 가능
- 여러 개 쌓이면 구분이 안 되니 **`-m` 메시지 습관** 들이기
