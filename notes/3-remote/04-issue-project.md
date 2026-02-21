# Issue & Project

## Issue란?

GitHub에서 "해야 할 일"을 기록하는 티켓. 버그 리포트, 기능 요청, 질문 등을 관리.

## Issue 구성 요소

| 요소 | 설명 |
|------|------|
| Title | 이슈 제목 |
| Body | 상세 설명 (마크다운 가능) |
| Assignee | 담당자 |
| Label | 분류 태그 (bug, enhancement, docs 등) |
| Milestone | 목표 기한/버전 |
| Project | 연결된 프로젝트 보드 |

## 기본 라벨

- `bug` - 버그
- `enhancement` - 새 기능 요청
- `documentation` - 문서 관련
- `question` - 질문
- `good first issue` - 초보자용 이슈
- `wontfix` - 안 고칠 것
- `duplicate` - 중복 이슈
- `invalid` - 유효하지 않음

## Issue ↔ PR 자동 연결

PR 본문이나 커밋 메시지에 아래 키워드 + 이슈 번호를 쓰면, PR 머지 시 이슈가 자동 Close됨:

```
closes #12
fixes #12
resolves #12
```

**주의**: `removes`, `deletes` 등은 키워드가 아님!

## Milestone

여러 이슈를 하나의 목표(버전, 기한)로 묶는 기능. 진행률을 한눈에 파악 가능.

- 웹: Issues 탭 → Milestones → New milestone
- CLI: `gh api repos/{owner}/{repo}/milestones` 사용

## Project (V2)

칸반 보드 형태로 이슈를 시각적으로 관리.

- Todo → In Progress → Done 형태로 드래그 이동
- 웹: Projects 탭 → New project → Board 선택

## 주요 CLI 명령어

```bash
# 이슈 생성
gh issue create --title "제목" --body "내용" --label "라벨"

# 이슈 목록
gh issue list
gh issue list --state all        # 닫힌 이슈 포함
gh issue list --label "bug"      # 특정 라벨만

# 이슈 조회/닫기/열기
gh issue view <번호>
gh issue close <번호> --reason completed
gh issue close <번호> --reason "not planned"
gh issue reopen <번호>

# 이슈 편집
gh issue edit <번호> --add-assignee @me
gh issue edit <번호> --add-label "bug"
```
