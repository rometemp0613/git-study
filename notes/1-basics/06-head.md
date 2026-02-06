# HEAD 개념

## 핵심 요약

- **HEAD** = 현재 내가 서 있는 위치를 가리키는 포인터
- 보통은 브랜치를 가리키고, 그 브랜치가 최신 커밋을 가리킴
- `HEAD → main → 최신 커밋`

## HEAD~n (틸드)

- `~` 뒤의 숫자 = **몇 세대 위로** 올라갈지
- 항상 **첫 번째 부모**만 따라감

| 표현 | 의미 |
|------|------|
| `HEAD` | 현재 커밋 |
| `HEAD~1` (= `HEAD~`) | 1개 전 커밋 |
| `HEAD~2` | 2개 전 커밋 |
| `HEAD~3` | 3개 전 커밋 |

## HEAD^ (캐럿)

- `^` 뒤의 숫자 = **몇 번째 부모**인지
- 숫자 없이 `^`만 쓰면 = `^1` = 첫 번째 부모

| 표현 | 의미 |
|------|------|
| `HEAD^` (= `HEAD^1`) | 첫 번째 부모 (= `HEAD~1`) |
| `HEAD^^` | 2세대 위 (= `HEAD~2`) |
| `HEAD^2` | **두 번째 부모** (머지 커밋에서만 의미 있음) |

## ~와 ^ 차이 정리

- **일반 커밋**: `HEAD~1` = `HEAD^` (똑같음)
- **머지 커밋**: `HEAD^2`로 두 번째 부모 접근 가능
- 핵심: **`~`는 몇 세대 위, `^` 뒤 숫자는 몇 번째 부모**

## .git/HEAD 파일

```bash
cat .git/HEAD
```

- `ref: refs/heads/main` → main 브랜치에 있음
- `ref: refs/heads/feature` → feature 브랜치에 있음
- 해시값 직접 표시 → Detached HEAD 상태

## 자주 쓰는 활용법

```bash
# 직전 커밋과 차이 비교
git diff HEAD~1

# 최근 3개 커밋 범위 보기
git log --oneline HEAD~3..HEAD

# 3개 전 커밋 이후 변경된 파일 목록
git diff HEAD~3 --name-only

# 특정 커밋 정보 보기
git show HEAD~2 --oneline --no-patch
```
