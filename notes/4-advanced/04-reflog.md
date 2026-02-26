# reflog - 실수로 삭제한 커밋 복구

## reflog란?

- **Reference Log**의 줄임말
- HEAD가 가리킨 모든 이동 기록을 저장한 로그
- Git의 "블랙박스" — 내가 한 모든 행동이 기록됨

## git log vs git reflog

| 구분 | git log | git reflog |
|------|---------|------------|
| 보여주는 것 | 커밋 간 부모-자식 관계 | HEAD 이동 기록 (모든 행동) |
| reset으로 날린 커밋 | 안 보임 | 보임 (해시 찾을 수 있음) |
| 용도 | 커밋 히스토리 확인 | 실수 복구 |

## reflog 특징

1. **로컬 전용** — 원격에는 없고 내 컴퓨터에만 있음
2. **90일 보관** — 기본 90일 후 자동 삭제
3. **clone하면 없음** — 새로 clone한 저장소에는 reflog가 비어있음

## 핵심 명령어

```bash
# reflog 보기
git reflog                  # HEAD의 이동 기록
git reflog show <브랜치>     # 특정 브랜치의 이동 기록

# 복구하기
git reset --hard <해시>      # 커밋 복구 (현재 브랜치를 그 커밋으로 이동)
git branch <이름> <해시>     # 삭제된 브랜치 복구 (해시 위치에 새 브랜치 생성)
```

## reflog 출력 읽는 법

```
abc1234 HEAD@{0}: commit: 최신 커밋 메시지
───────  ────────  ─────────────────────────
 해시     몇 번째     무슨 행동을 했는지
(복구용)  전 행동
```

## 복구 상황별 방법

| 상황 | 방법 |
|------|------|
| reset --hard로 커밋 날림 | reflog에서 해시 찾고 `git reset --hard <해시>` |
| 브랜치 삭제 | reflog에서 해시 찾고 `git branch <이름> <해시>` |
| rebase 실수 | reflog에서 rebase 전 해시 찾고 `git reset --hard <해시>` |

## reset vs branch 차이 (복구 시)

- `git reset --hard <해시>` → **현재 브랜치**를 그 커밋으로 옮김
- `git branch <이름> <해시>` → 그 커밋 위치에 **새 브랜치를 생성** (현재 브랜치는 안 움직임)
