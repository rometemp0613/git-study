# 복습 중인 용어/개념

## restore

- **git restore --source <커밋> <파일>**: 특정 커밋 시점의 파일 상태로 되돌림. 기본값은 HEAD.
- **git restore .**: 현재 디렉토리의 모든 변경 파일을 한 번에 되돌림.

## cherry-pick

- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

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

## Fork

- **Fork vs Clone**: Fork는 서버 간 복사(GitHub→GitHub), Clone은 서버→로컬 복사(GitHub→내 PC).
- **Fork**: GitHub → GitHub 서버 간 레포 복사. 내 계정에 원본의 사본을 만듦. 오픈소스 기여 시 사용.

## Issue & Project

- **closes/fixes/resolves #번호**: PR 본문이나 커밋에 쓰면 머지 시 해당 이슈 자동 Close.

## README & Markdown

- **마크다운 이미지 vs 링크**: `[텍스트](URL)` = 링크, `![대체텍스트](URL)` = 이미지. `!` 유무 차이.


## stash

- **git stash drop stash@{n}**: 특정 stash 삭제.
- **git stash -u**: untracked(새로 만든) 파일도 포함해서 stash. 기본 stash는 tracked만 저장.

## tag

- **tag**: 특정 커밋에 붙이는 영구 이름표. 브랜치와 달리 움직이지 않는 고정 포인터.
- **lightweight tag**: 이름만 붙이는 태그. 메타데이터 없음. `git tag v0.1`
- **annotated tag**: 만든 사람, 날짜, 메시지 포함. `git tag -a v1.0 -m "메시지"`. 실무에서 사용.
- **git tag -a <tag> -m "msg" <해시>**: 과거 커밋에 뒤늦게 tag 붙이기.

## 시맨틱 버전 관리

- **MAJOR.MINOR.PATCH**: v1.2.3 형식. MAJOR=호환 깨짐, MINOR=기능 추가, PATCH=버그 수정.

## reflog

- **reflog**: Reference Log. HEAD 이동 기록을 저장하는 로컬 전용 로그. 90일 보관, clone하면 없음.
- **git log vs git reflog**: log는 커밋 부모-자식 관계, reflog는 HEAD 이동 행동 기록. reset으로 날린 커밋도 reflog에는 남아있음.
