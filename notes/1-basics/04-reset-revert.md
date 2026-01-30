# 되돌리기: reset vs revert

## reset vs revert 비교

```
reset:  A - B - C  →  A - B      (C 삭제, 히스토리 변경)
revert: A - B - C  →  A - B - C - C'  (C를 취소하는 새 커밋 추가)
```

| | reset | revert |
|--|-------|--------|
| 방식 | 커밋 삭제 | 취소 커밋 생성 |
| 히스토리 | 변경됨 | 유지됨 |
| push한 커밋 | ❌ 위험 | ✅ 안전 |

---

## git reset

### 3가지 모드

```
           --soft     --mixed(기본)    --hard
              ↓            ↓              ↓
HEAD        되돌림       되돌림         되돌림
Staging     유지         되돌림         되돌림
Working     유지         유지           되돌림
```

### 사용법

```bash
git reset HEAD 파일       # unstage (staging → working)
git reset --soft HEAD~1   # 커밋 취소, 변경사항 staged 유지
git reset HEAD~1          # 커밋 취소, 변경사항 unstaged (기본)
git reset --hard HEAD~1   # 모두 삭제 ⚠️
git reset --hard HEAD     # 모든 로컬 변경사항 삭제 ⚠️
```

### HEAD~ 표기법
- `HEAD~1` = 1개 전 커밋
- `HEAD~2` = 2개 전 커밋
- `HEAD~` = `HEAD~1`과 동일

---

## git revert

안전하게 되돌리기 (새 커밋 생성)

```bash
git revert HEAD              # 최신 커밋 취소
git revert 커밋해시           # 특정 커밋 취소
git revert HEAD~2            # 2개 전 커밋 취소
git revert --no-edit HEAD    # 편집기 없이 기본 메시지 사용
```

### 여러 커밋 revert

```bash
git revert HEAD~2..HEAD      # 최근 2개 커밋 순차적으로 revert
git revert -n HEAD~2..HEAD   # 커밋 없이 변경만 (-n = --no-commit)
```

---

## 언제 무엇을 사용?

| 상황 | 사용할 명령어 |
|------|-------------|
| 아직 push 안 한 커밋 | `reset` 또는 `revert` |
| 이미 push한 커밋 | `revert` ✅ |
| 로컬 변경사항 버리기 | `reset --hard` |
| 협업 중 | `revert` ✅ |

### 핵심 원칙
> **push한 커밋은 revert, 안 한 커밋은 reset**
