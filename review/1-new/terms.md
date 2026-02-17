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
