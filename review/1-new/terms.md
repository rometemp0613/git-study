# 새로 배운 용어/개념

## restore

- **git restore <파일>**: 워킹 디렉토리의 변경사항을 마지막 커밋 상태로 되돌림. 수정 내용이 영구 삭제되므로 위험.
- **git restore --staged <파일>**: 스테이징 영역에서만 제거. 파일 내용은 워킹 디렉토리에 그대로 남아있으므로 안전.
- **git restore --source <커밋> <파일>**: 특정 커밋 시점의 파일 상태로 되돌림. 기본값은 HEAD.
- **git restore .**: 현재 디렉토리의 모든 변경 파일을 한 번에 되돌림.

## 복습에서 틀린 것

- **reset --mixed**: reset의 기본값. HEAD + Staging을 되돌리고 Working Directory는 유지. --soft(HEAD만), --mixed(HEAD+Staging), --hard(전부).
- **HEAD~n vs HEAD^n**: ~n은 "몇 세대 위"(HEAD~2 = 2세대 위), ^n은 "몇 번째 부모"(HEAD^2 = 두 번째 부모, 머지 커밋에서만 의미). 일반 커밋에서는 HEAD~1 = HEAD^.
- **git diff가 비어있는 이유**: git add 후에는 Working Directory와 Staging이 같아져서 git diff가 비어있음. 이때는 git diff --staged로 Staging ↔ Repository 비교해야 변경사항이 보임.
