# 복습 중인 용어/개념

## restore

- **git restore <파일>**: 워킹 디렉토리의 변경사항을 마지막 커밋 상태로 되돌림. 수정 내용이 영구 삭제되므로 위험.
- **git restore --staged <파일>**: 스테이징 영역에서만 제거. 파일 내용은 워킹 디렉토리에 그대로 남아있으므로 안전.
- **git restore --source <커밋> <파일>**: 특정 커밋 시점의 파일 상태로 되돌림. 기본값은 HEAD.
- **git restore .**: 현재 디렉토리의 모든 변경 파일을 한 번에 되돌림.

## cherry-pick

- **git cherry-pick <해시>**: 다른 브랜치의 특정 커밋을 현재 브랜치에 복사. 해시가 달라짐(부모 커밋이 다르니까).
- **git cherry-pick --no-commit (-n)**: 커밋하지 않고 스테이징에만 올림. 여러 커밋을 하나로 합칠 때 유용.
- **git cherry-pick --continue**: 충돌 해결 후 계속 진행. 해시를 붙이면 안 됨!
- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

## 복습에서 틀린 것

- **reset --mixed**: reset의 기본값. HEAD + Staging을 되돌리고 Working Directory는 유지. --soft(HEAD만), --mixed(HEAD+Staging), --hard(전부).
- **git diff가 비어있는 이유**: git add 후에는 Working Directory와 Staging이 같아져서 git diff가 비어있음. 이때는 git diff --staged로 Staging ↔ Repository 비교해야 변경사항이 보임.

## 복습 2라운드에서 틀린 것

- **reset 기본값은 --mixed (반복 오답!)**: 변경 내용이 삭제되는 건 --hard뿐. 기본(--mixed)은 Working Directory에 unstaged로 남아있음. 외우기: soft=살살(커밋만), mixed=중간(커밋+스테이징), hard=전부 날림. 핵심: reset은 커밋 포인터만 뒤로 가고 파일은 원래대로 남아있는 게 기본. --hard만 파일까지 바꿈.
- **reword**: interactive rebase에서 커밋 메시지만 수정할 때 사용. squash=합치기, edit=내용 수정, reword=메시지만 수정.
- **git status -s 읽는 법**: 왼쪽 칸=Staging 상태, 오른쪽 칸=Working Directory 상태. `M ` = staged, ` M` = unstaged, `??` = untracked.
