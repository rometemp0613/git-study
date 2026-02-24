# 복습 중인 용어/개념

## restore

- **git restore <파일>**: 워킹 디렉토리의 변경사항을 마지막 커밋 상태로 되돌림. 수정 내용이 영구 삭제되므로 위험.
- **git restore --source <커밋> <파일>**: 특정 커밋 시점의 파일 상태로 되돌림. 기본값은 HEAD.
- **git restore .**: 현재 디렉토리의 모든 변경 파일을 한 번에 되돌림.

## cherry-pick

- **git cherry-pick --no-commit (-n)**: 커밋하지 않고 스테이징에만 올림. 여러 커밋을 하나로 합칠 때 유용.
- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

## diff

- **git diff가 비어있는 이유**: git add 후에는 Working Directory와 Staging이 같아져서 git diff가 비어있음. 이때는 git diff --staged로 Staging ↔ Repository 비교해야 변경사항이 보임.

## git status

- **git status -s 읽는 법**: 왼쪽 칸=Staging 상태, 오른쪽 칸=Working Directory 상태. `M ` = staged, ` M` = unstaged, `??` = untracked.

## 원격 추적 브랜치

- **git branch -r**: 원격 추적 브랜치만 보기.
- **git branch -a**: 로컬 + 원격 추적 브랜치 모두 보기.
- **git branch -vv**: 로컬 브랜치의 upstream 연결 상태와 ahead/behind 확인.
- **upstream (-u)**: `git push -u origin main`으로 설정. 이후 `git push`만으로 push 가능.
- **push도 origin/main을 업데이트함**: push 성공 후 로컬의 origin/main도 push한 커밋 위치로 이동.

## PR CLI

- **gh pr create --title "제목" --body "설명"**: CLI에서 PR 생성.
- **gh pr view <번호>**: PR 정보 조회.
- **gh pr merge <번호>**: PR 머지.

## remote 기타

- **git clone <URL>**: 원격 저장소를 로컬에 통째로 복제. 자동으로 origin 설정됨.
- **git remote -v**: 연결된 원격 저장소 목록과 URL 확인.
- **git push origin main**: 로컬 커밋을 원격에 업로드. origin/main도 함께 업데이트됨.
- **git pull**: fetch + merge. 원격 변경사항을 가져와서 바로 병합.

## Pull Request 워크플로우

- **PR 흐름**: 브랜치 → 작업 → push → PR 생성 → 리뷰 → 머지 → 브랜치 삭제.
