# 완벽히 암기한 용어/개념

## HEAD 참조

- **HEAD~n vs HEAD^n**: ~n은 "몇 세대 위"(HEAD~2 = 2세대 위), ^n은 "몇 번째 부모"(HEAD^2 = 두 번째 부모, 머지 커밋에서만 의미). 일반 커밋에서는 HEAD~1 = HEAD^.

## restore

- **git restore --staged <파일>**: 스테이징 영역에서만 제거. 파일 내용은 워킹 디렉토리에 그대로 남아있으므로 안전.

## cherry-pick

- **git cherry-pick --continue**: 충돌 해결 후 계속 진행. 해시를 붙이면 안 됨!

## reset

- **reset --mixed**: reset의 기본값. HEAD + Staging을 되돌리고 Working Directory는 유지.
