# git restore - 변경사항 취소

## 핵심 명령어

| 명령어 | 용도 | 안전성 |
|--------|------|--------|
| `git restore <파일>` | 워킹 디렉토리 변경 취소 | 위험 (수정 내용 삭제) |
| `git restore --staged <파일>` | 스테이징 취소 (add 취소) | 안전 (내용 유지) |
| `git restore --source <커밋> <파일>` | 특정 커밋 시점으로 되돌리기 | - |
| `git restore .` | 모든 변경 파일 한 번에 되돌리기 | 위험 |

## 3가지 영역에서의 동작

```
[Repository]
     │
     │  git restore --staged <파일>
     ▼
[Staging Area]
     │
     │  git restore <파일>
     ▼
[Working Directory]
```

## restore vs reset vs revert

| 명령어 | 대상 | 용도 |
|--------|------|------|
| `restore` | 파일 | 파일 변경사항/스테이징 취소 |
| `reset` | 커밋 | 커밋 히스토리를 되돌림 |
| `revert` | 커밋 | 취소 커밋을 새로 만듦 |

**파일 단위 = restore, 커밋 단위 = reset/revert**

## 복합 상황: staged + 파일 내용 모두 되돌리기

```bash
git restore --staged <파일>   # 1) 스테이징 취소 (먼저!)
git restore <파일>            # 2) 워킹 디렉토리 되돌리기
```

순서 중요: staged를 먼저 풀고, 그다음 파일을 되돌려야 함.

## checkout과의 관계

Git 2.23에서 checkout의 역할이 분리됨:
- `git checkout -- <파일>` → `git restore <파일>`
- `git checkout <브랜치>` → `git switch <브랜치>`
