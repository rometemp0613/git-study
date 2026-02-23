# 완벽히 암기한 용어/개념

## HEAD 참조

- **HEAD~n vs HEAD^n**: ~n은 "몇 세대 위"(HEAD~2 = 2세대 위), ^n은 "몇 번째 부모"(HEAD^2 = 두 번째 부모, 머지 커밋에서만 의미). 일반 커밋에서는 HEAD~1 = HEAD^.

## restore

- **git restore --staged <파일>**: 스테이징 영역에서만 제거. 파일 내용은 워킹 디렉토리에 그대로 남아있으므로 안전.

## cherry-pick

- **git cherry-pick <해시>**: 다른 브랜치의 특정 커밋을 현재 브랜치에 복사. 해시가 달라짐(부모 커밋이 다르니까).
- **git cherry-pick --continue**: 충돌 해결 후 계속 진행. 해시를 붙이면 안 됨!

## reset

- **reset --mixed**: reset의 기본값. HEAD + Staging을 되돌리고 Working Directory는 유지.

## fetch

- **fetch vs pull**: fetch는 안전하게 확인만, pull은 바로 병합까지. fetch 후 diff로 확인하고 merge하는 게 안전.

## 원격 추적 브랜치

- **origin/main**: 마지막으로 확인한 원격 저장소의 상태를 기억하는 읽기 전용 포인터. fetch, push, pull 시 업데이트됨. (merge만으로는 업데이트 안 됨!)

## interactive rebase 키워드

- **squash**: 이전 커밋과 합치기. **reword**: 커밋 메시지만 수정. **edit**: 커밋 내용(파일) 수정.
