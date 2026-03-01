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

## hooks

- **Hook**: Git 이벤트 시 자동 실행되는 셸 스크립트. `.git/hooks/`에 저장.
- **pre-commit**: 커밋 직전 실행. 코드 검사, 린트 등. exit 1로 커밋 차단 가능.
- **commit-msg**: 커밋 메시지 작성 후 실행. 메시지 형식 강제. `$1`로 메시지 파일 경로 받음.
- **post-commit**: 커밋 완료 후 실행. 알림용. 차단 불가.
- **pre-push**: push 직전 실행. 테스트, 브랜치 체크. exit 1로 push 차단 가능.
- **exit 0 / exit 1**: 0=통과(계속 진행), 1=실패(작업 차단).
- **chmod +x**: Hook 파일에 실행 권한 부여. 없으면 Hook 실행 안 됨.
- **Hook은 로컬 전용**: `.git/hooks/`는 push 안 됨. 팀원과 자동 공유 불가.
- **.sample 확장자**: 붙어있으면 비활성화. 제거하면 활성화.

## submodule

- **submodule**: 내 저장소 안에 다른 저장소를 포함. 파일이 아닌 커밋 해시(포인터)만 기록.
- **git submodule add <URL> <경로>**: submodule 추가. 경로는 자유롭게 설정 가능.
- **.gitmodules**: submodule 설정 파일. URL과 경로가 기록됨.
- **git clone --recurse-submodules**: submodule 포함 clone. 안 쓰면 submodule 폴더가 비어있음.
- **git submodule init + update**: clone 후 빈 submodule 초기화. init은 등록, update는 파일 다운로드.
- **git submodule update --remote**: 원격 최신 커밋으로 업데이트. (그냥 update는 메인이 기록한 커밋으로 맞추는 것)
- **git submodule status**: 상태 확인. 앞 기호: 공백=정상, `-`=init 안 됨, `+`=커밋이 다름.
- **submodule 삭제 3단계**: `deinit` → `rm -rf .git/modules/...` → `git rm`. 번거롭지만 이 순서대로.
- **submodule 업데이트 2단계**: submodule 안에서 pull(파일 가져옴) → 메인에서 커밋(포인터 기록). 둘 다 해야 완성.
- **submodule 폴더는 독립된 Git 저장소**: clone으로 만들어졌으므로 자기만의 remote, log, branch가 별도로 존재.

## alias

- **git config --global alias.<단축키> '<명령어>'**: alias 등록. `git` 뒤 부분만 적음.
- **git config --global --get-regexp alias**: 등록된 alias 전체 목록 확인.
- **git config --global --unset alias.<단축키>**: alias 삭제.
- **~/.gitconfig**: `--global` alias가 저장되는 파일. `[alias]` 섹션에 기록됨.
- **.git/config**: `--local` (기본) alias가 저장되는 파일. 해당 저장소에서만 사용.
- **git config --global --edit**: 설정 파일을 직접 편집기로 열기.

## Git Flow

- **Git Flow**: Vincent Driessen이 제안한 브랜치 전략. main, develop, feature, release, hotfix 5가지 브랜치 사용.
- **main**: 항상 배포 가능한 코드. 직접 커밋 금지. 머지 시 태그 붙임.
- **develop**: 다음 릴리스 준비용 통합 브랜치. feature가 여기로 머지됨.
- **feature/***: develop에서 분기 → develop으로 머지. 새 기능 개발용.
- **release/***: develop에서 분기 → main + develop 둘 다에 머지. 출시 마무리용.
- **hotfix/***: main에서 분기 → main + develop 둘 다에 머지. 긴급 버그 수정용.
- **--no-ff**: No Fast-Forward. 머지 커밋을 강제 생성해서 브랜치 분기/합류 히스토리를 보존.
