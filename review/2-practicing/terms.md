# 복습 중인 용어/개념

## restore

## cherry-pick

- **git cherry-pick --abort**: cherry-pick 취소하고 원래 상태로 돌아감.

## 원격 추적 브랜치

- **git branch -a**: 로컬 + 원격 추적 브랜치 모두 보기.
- **push도 origin/main을 업데이트함**: push 성공 후 로컬의 origin/main도 push한 커밋 위치로 이동.

## PR CLI

- **gh pr view <번호>**: PR 정보 조회.
- **gh pr merge <번호>**: PR 머지.

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

- **Job**: 독립된 작업 단위. 기본적으로 병렬 실행. 순서 강제는 `needs:` 사용.

## Conventional Commits

- **Breaking Change 표기**: 타입 뒤에 `!` 붙이기 또는 footer에 `BREAKING CHANGE:` 명시.

## 린트/포매팅

- **eslint-config-prettier**: ESLint와 Prettier 충돌 방지. Prettier와 겹치는 ESLint 규칙 비활성화.

## submodule
