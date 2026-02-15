# 새로 배운 용어/개념

## remote, push, pull, fetch, clone

- **git clone <URL>**: 원격 저장소를 로컬에 통째로 복제. 자동으로 origin 설정됨.
- **git remote -v**: 연결된 원격 저장소 목록과 URL 확인.
- **git push origin main**: 로컬 커밋을 원격에 업로드. origin/main도 함께 업데이트됨.
- **git fetch**: 원격 변경사항을 원격 추적 브랜치(origin/main)에만 다운로드. 로컬 브랜치는 안 바뀜.
- **git pull**: fetch + merge. 원격 변경사항을 가져와서 바로 병합.
- **fetch vs pull**: fetch는 안전하게 확인만, pull은 바로 병합까지. fetch 후 diff로 확인하고 merge하는 게 안전.

## 원격 추적 브랜치

- **origin/main**: 마지막으로 확인한 원격 저장소의 상태를 기억하는 읽기 전용 포인터. fetch, push, pull 시 업데이트됨.
- **git branch -r**: 원격 추적 브랜치만 보기.
- **git branch -a**: 로컬 + 원격 추적 브랜치 모두 보기.
- **git branch -vv**: 로컬 브랜치의 upstream 연결 상태와 ahead/behind 확인.
- **upstream (-u)**: `git push -u origin main`으로 설정. 이후 `git push`만으로 push 가능.

## 퀴즈에서 틀린 것

- **fetch는 스테이징이 아니라 원격 추적 브랜치를 업데이트**: fetch는 워킹 디렉토리나 스테이징에 아무 영향 없음. origin/main만 최신으로 갱신.
- **push도 origin/main을 업데이트함**: push 성공 후 로컬의 origin/main도 push한 커밋 위치로 이동.
