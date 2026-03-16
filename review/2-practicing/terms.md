# 복습 중인 용어/개념

## restore

## cherry-pick

- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

## 원격 추적 브랜치

- **push도 origin/main을 업데이트함**: push 성공 후 로컬의 origin/main도 push한 커밋 위치로 이동.

## PR CLI

- **gh pr view <번호>**: PR 정보 조회.

## remote 기타

- **git clone <URL>**: 원격 저장소를 로컬에 통째로 복제. 자동으로 origin 설정됨.
- **git remote -v**: 연결된 원격 저장소 목록과 URL 확인.
- **git push origin main**: 로컬 커밋을 원격에 업로드. origin/main도 함께 업데이트됨.

## Pull Request 워크플로우

- **PR 흐름**: 브랜치 → 작업 → push → PR 생성 → 리뷰 → 머지 → 브랜치 삭제.

## Fork


## Git Flow

## Issue & Project

## README & Markdown


## hooks

## stash

## alias

## GitHub Actions

## Conventional Commits

- **Breaking Change 표기**: 타입 뒤에 `!` 붙이기 또는 footer에 `BREAKING CHANGE:` 명시.

## 린트/포매팅

- **eslint-config-prettier**: ESLint와 Prettier 충돌 방지. Prettier와 겹치는 ESLint 규칙 비활성화.

## submodule

## Git 객체

- **blob (Binary Large Object)**: 파일의 내용만 저장하는 객체. 파일 이름은 모른다. 같은 내용이면 같은 해시 → 1개만 저장.
- **tree**: 디렉토리 구조를 저장하는 객체. "파일 이름 → blob/tree 해시" 매핑을 기록. 하위 폴더는 tree 안의 tree.
- **git cat-file -t <해시>**: 객체의 타입 확인. commit, tree, blob 중 하나 출력.
