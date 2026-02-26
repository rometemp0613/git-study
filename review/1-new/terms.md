# 새로 배운 용어/개념

## 브랜치 보호 규칙

- **Ruleset**: GitHub의 브랜치 보호 규칙 시스템. Settings → Rules → Rulesets에서 설정.
- **Require a pull request before merging**: main에 직접 push 차단. 반드시 PR을 통해 머지해야 함.
- **Require approvals**: PR 머지 전 리뷰어 승인 필수. 혼자 작업 시 0으로 설정 가능.
- **Block force pushes**: `git push --force`도 차단.
- **Restrict deletions**: 보호된 브랜치 삭제 금지.
- **gh ruleset list**: CLI에서 적용된 ruleset 목록 확인.
- **gh ruleset view <ID>**: 특정 ruleset 상세 내용 확인.
- **git fetch --prune**: 원격에서 삭제된 브랜치의 추적 정보를 로컬에서 정리.

## Issue & Project

- **Issue**: GitHub에서 할 일을 기록하는 티켓. 버그 리포트, 기능 요청, 질문 등에 사용.
- **Label**: 이슈 분류 태그. bug, enhancement, documentation 등 기본 제공.
- **Assignee**: 이슈 담당자 지정. `gh issue edit --add-assignee @me`로 설정.
- **Milestone**: 여러 이슈를 하나의 목표(버전/기한)로 묶는 기능. 진행률 자동 계산.
- **Project (V2)**: 칸반 보드로 이슈를 시각적으로 관리 (Todo → In Progress → Done).
- **gh issue create**: `--title`, `--body`, `--label` 옵션으로 CLI에서 이슈 생성.
- **gh issue list**: 열린 이슈 목록. `--state all`로 닫힌 것도 포함.
- **gh issue close <번호>**: 이슈 닫기. `--reason completed` 또는 `--reason "not planned"`.
- **gh issue edit <번호>**: `--add-assignee`, `--add-label` 등으로 이슈 수정.

## README & Markdown

- **뱃지**: shields.io 같은 서비스가 상태를 실시간 이미지 URL로 제공. GitHub Actions 연결 시 빌드 결과 자동 반영.
- **GitHub 전용 문법**: `@username` 멘션, `#123` 이슈/PR 자동 링크, `- [ ]` / `- [x]` 체크박스.
- **잘 만든 README 구성**: 프로젝트 설명 → 설치 → 사용법 → 기여 → 라이센스.

## Fork

- **git remote add upstream <URL>**: 원본 레포를 upstream으로 수동 등록.
- **gh repo fork <레포> --clone=true**: Fork + Clone + upstream 설정을 한 번에.
- **upstream 동기화**: `git fetch upstream` → `git merge upstream/main` → `git push origin main`. 안 하면 PR 충돌 가능.
- **오픈소스 기여 흐름**: Fork → Clone → 브랜치 → 작업 → push(origin) → 원본에 PR.

## stash

- **git stash apply**: stash를 꺼내되 목록에 유지. 여러 브랜치에 같은 stash 적용할 때 사용.
- **git stash -u**: untracked(새로 만든) 파일도 포함해서 stash. 기본 stash는 tracked만 저장.
- **git stash -m "메시지"**: 설명을 달아서 저장. 여러 개 쌓일 때 구분용.
- **git stash list**: 저장된 stash 목록 보기. stash@{0}이 가장 최근.
- **git stash clear**: 모든 stash 삭제.

## tag

- **git tag -l "패턴"**: 패턴으로 tag 필터링. -l 없이 패턴 쓰면 tag 생성 시도됨.
- **git show <tag>**: tag 상세 정보. annotated는 Tagger/Date/메시지 나오고, lightweight는 커밋 정보만.
- **git push origin --delete <tag>**: 원격 tag 삭제. 로컬은 `git tag -d`로 따로 삭제.

## 시맨틱 버전 관리

- **pre-release 순서**: alpha(불안정) → beta(테스트) → rc(출시후보) → 정식.
- **rc**: Release Candidate. 정식 출시 직전 최종 테스트 버전.
- **v0.x.x**: 초기 개발 단계. 아직 정식 아님, 언제든 바뀔 수 있음.
- **gh release create**: `gh release create v1.0.0 --title "v1.0.0" --notes "설명"`. tag 기반으로 GitHub Release 생성.

## reflog

- **git reflog**: HEAD의 이동 기록 보기. 모든 행동(commit, reset, checkout, rebase 등) 기록됨.
- **git reflog show <브랜치>**: 특정 브랜치의 이동 기록만 보기.
- **HEAD@{n}**: n번째 전 행동. `git reset --hard HEAD@{2}`처럼 복구에 사용.
- **커밋 복구**: reflog에서 해시 찾고 `git reset --hard <해시>`.
- **브랜치 복구**: reflog에서 해시 찾고 `git branch <이름> <해시>`.
