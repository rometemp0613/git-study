# 브랜치 기초

## 브랜치란?

독립적인 작업 공간. 새 기능 개발 시 브랜치를 만들어 작업하고, 완료되면 main에 합침.

```
          feature
            ↓
            ● ─ ●
           /
● ─ ● ─ ●
         ↑
        main
```

---

## git branch

브랜치 관리

```bash
git branch              # 브랜치 목록
git branch 이름          # 브랜치 생성만
git branch -d 이름       # 브랜치 삭제 (merge된 것만)
git branch -D 이름       # 브랜치 강제 삭제
```

---

## git switch

브랜치 이동 (권장)

```bash
git switch 이름          # 브랜치 이동
git switch -c 이름       # 생성 + 이동 동시에
```

### switch vs checkout
- `git checkout`은 구버전 방식
- `git switch`가 브랜치 전용이라 더 명확함

---

## git merge

브랜치 합치기

```bash
git switch main          # main으로 이동
git merge 브랜치명       # 해당 브랜치를 현재 브랜치로 합침
```

### Fast-forward
- main이 그냥 앞으로 이동만 하면 되는 경우
- 새 커밋 없이 포인터만 이동

```
Before:
● ─ ● (main)
     \
      ● ─ ● (feature)

After (fast-forward):
● ─ ● ─ ● ─ ● (main, feature)
```

---

## 브랜치 삭제

- Feature 브랜치는 merge 후 삭제하는 게 일반적
- `main`, `develop` 같은 장기 브랜치는 유지
- 같은 기능 재작업 시 새 브랜치 생성 권장

```bash
git branch -d feature    # merge된 브랜치 삭제
git branch -D feature    # 강제 삭제 (merge 안 됐어도)
```

---

## 브랜치 전략 미리보기

```
main ─────●─────●─────●─────●
           \         /
feature     ●───●───●
```

- `main`: 안정적인 배포 버전
- `feature/*`: 새 기능 개발용
- `hotfix/*`: 긴급 버그 수정용
