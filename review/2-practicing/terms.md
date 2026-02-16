# 복습 중인 용어/개념

## restore

- **git restore <파일>**: 워킹 디렉토리의 변경사항을 마지막 커밋 상태로 되돌림. 수정 내용이 영구 삭제되므로 위험.
- **git restore --source <커밋> <파일>**: 특정 커밋 시점의 파일 상태로 되돌림. 기본값은 HEAD.
- **git restore .**: 현재 디렉토리의 모든 변경 파일을 한 번에 되돌림.

## cherry-pick

- **git cherry-pick <해시>**: 다른 브랜치의 특정 커밋을 현재 브랜치에 복사. 해시가 달라짐(부모 커밋이 다르니까).
- **git cherry-pick --no-commit (-n)**: 커밋하지 않고 스테이징에만 올림. 여러 커밋을 하나로 합칠 때 유용.
- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

## 복습에서 틀린 것

- **git diff가 비어있는 이유**: git add 후에는 Working Directory와 Staging이 같아져서 git diff가 비어있음. 이때는 git diff --staged로 Staging ↔ Repository 비교해야 변경사항이 보임.

## 복습 2라운드에서 틀린 것

- **reword**: interactive rebase에서 커밋 메시지만 수정할 때 사용. squash=합치기, edit=내용 수정, reword=메시지만 수정.
- **git status -s 읽는 법**: 왼쪽 칸=Staging 상태, 오른쪽 칸=Working Directory 상태. `M ` = staged, ` M` = unstaged, `??` = untracked.
