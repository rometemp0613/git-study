# git diff - 변경사항 비교

## 개념

```
Working Directory ←──diff──→ Staging Area ←──diff --staged──→ Repository
                     ↑                                            ↑
                     └────────────diff HEAD────────────────────────┘
```

---

## 기본 명령어

```bash
git diff                  # Working Directory ↔ Staging Area
git diff --staged         # Staging Area ↔ 최신 커밋 (= --cached)
git diff HEAD             # Working Directory ↔ 최신 커밋
```

---

## 비교 대상 지정

```bash
git diff 커밋해시              # 특정 커밋과 비교
git diff 커밋1 커밋2           # 두 커밋 간 비교
git diff 브랜치1 브랜치2       # 두 브랜치 간 비교
git diff HEAD~2              # 2개 전 커밋과 비교
```

---

## 유용한 옵션

```bash
git diff 파일명              # 특정 파일만
git diff --stat             # 변경 통계만 (몇 줄 추가/삭제)
git diff --name-only        # 변경된 파일 이름만
git diff --word-diff        # 단어 단위로 비교
```

---

## 출력 읽는 법

```diff
--- a/hello.txt           ← 변경 전 파일
+++ b/hello.txt           ← 변경 후 파일
@@ -1,3 +1,4 @@           ← 위치 정보
 안녕하세요!               ← 공백: 변경 없음
+새로 추가된 줄            ← +: 추가된 줄
-삭제된 줄                 ← -: 삭제된 줄
```

---

## 핵심 포인트

| 상태 | `git diff` | `git diff --staged` |
|------|------------|---------------------|
| 수정만 함 | 변경사항 보임 | 비어있음 |
| add 후 | 비어있음 | 변경사항 보임 |
