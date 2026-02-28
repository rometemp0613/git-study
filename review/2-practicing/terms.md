# 복습 중인 용어/개념

## restore

- **git restore --source <커밋> <파일>**: 특정 커밋 시점의 파일 상태로 되돌림. 기본값은 HEAD.
- **git restore .**: 현재 디렉토리의 모든 변경 파일을 한 번에 되돌림.

## cherry-pick

- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

## 원격 추적 브랜치

- **git branch -r**: 원격 추적 브랜치만 보기.
- **git branch -a**: 로컬 + 원격 추적 브랜치 모두 보기.
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

## Fork

- **Fork vs Clone**: Fork는 서버 간 복사(GitHub→GitHub), Clone은 서버→로컬 복사(GitHub→내 PC).
- **Fork**: GitHub → GitHub 서버 간 레포 복사. 내 계정에 원본의 사본을 만듦. 오픈소스 기여 시 사용.

## Issue & Project

- **closes/fixes/resolves #번호**: PR 본문이나 커밋에 쓰면 머지 시 해당 이슈 자동 Close.

## README & Markdown

- **마크다운 이미지 vs 링크**: `[텍스트](URL)` = 링크, `![대체텍스트](URL)` = 이미지. `!` 유무 차이.


## stash
