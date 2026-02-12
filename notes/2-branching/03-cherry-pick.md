# cherry-pick - 특정 커밋만 가져오기

## 핵심 개념

- cherry-pick = 다른 브랜치의 **특정 커밋**을 현재 브랜치에 **복사**
- 복사지 이동이 아님 → 원본 브랜치에 커밋 그대로 남아있음
- 복사된 커밋은 **새로운 해시**를 가짐 (부모 커밋이 다르니까)

## 기본 사용법

```bash
# 특정 커밋 하나 가져오기
git cherry-pick <커밋해시>

# 여러 커밋 나열
git cherry-pick <해시1> <해시2> <해시3>

# 범위 지정 (D는 미포함, E~F 포함)
git cherry-pick D..F
```

## 유용한 옵션

```bash
# 커밋하지 않고 스테이징에만 올리기 (여러 커밋을 하나로 합칠 때)
git cherry-pick --no-commit <해시>  # (-n)

# 충돌 발생 시 취소
git cherry-pick --abort

# 충돌 해결 후 계속 진행 (해시 붙이지 말 것!)
git cherry-pick --continue
```

## 충돌 해결 흐름

1. cherry-pick 시도 → 충돌 발생
2. 충돌 파일 열어서 수동으로 해결
3. `git add <파일>`
4. `git cherry-pick --continue` (해시 없이!)

취소하고 싶으면: `git cherry-pick --abort`

## cherry-pick vs merge vs rebase

| 명령어 | 언제 쓸까 |
|--------|----------|
| cherry-pick | 특정 커밋 1~2개만 골라서 가져올 때 |
| merge | 브랜치 작업이 끝나서 전체를 합칠 때 |
| rebase | 푸시 전 커밋 히스토리를 깔끔하게 정리할 때 |

## 실무 활용 상황

1. feature 브랜치의 버그 수정 커밋만 급하게 main에 반영
2. 잘못된 브랜치에서 한 커밋을 올바른 브랜치로 옮기기
3. 다른 팀원 브랜치에서 유용한 커밋 하나만 가져오기
