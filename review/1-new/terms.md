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
- **closes/fixes/resolves #번호**: PR 본문이나 커밋에 쓰면 머지 시 해당 이슈 자동 Close.
- **gh issue create**: `--title`, `--body`, `--label` 옵션으로 CLI에서 이슈 생성.
- **gh issue list**: 열린 이슈 목록. `--state all`로 닫힌 것도 포함.
- **gh issue close <번호>**: 이슈 닫기. `--reason completed` 또는 `--reason "not planned"`.
- **gh issue edit <번호>**: `--add-assignee`, `--add-label` 등으로 이슈 수정.
