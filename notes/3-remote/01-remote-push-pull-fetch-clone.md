# remote, push, pull, fetch, clone

## 핵심 개념

### clone - 원격 저장소 복제
- `git clone <URL>`: 원격 저장소를 로컬에 복제
- 자동으로 `origin`이라는 remote 이름이 설정됨
- 모든 브랜치, 커밋 히스토리가 함께 복제됨

### remote - 원격 저장소 관리
- `git remote`: 연결된 원격 저장소 목록 확인
- `git remote -v`: URL까지 상세 확인 (fetch/push 각각)
- `git remote add <이름> <URL>`: 원격 저장소 연결 (보통 `origin` 사용)
- `git remote remove <이름>`: 원격 저장소 연결 해제

### push - 로컬 → 원격 업로드
- `git push origin main`: 로컬 main을 원격 origin의 main에 업로드
- `git push -u origin main`: upstream 설정 + push (이후 `git push`만으로 가능)
- push하면 **원격 추적 브랜치(origin/main)도 함께 업데이트됨**

### fetch - 원격 → 로컬 다운로드 (병합 X)
- `git fetch`: 원격 저장소의 최신 정보를 가져옴
- **원격 추적 브랜치(origin/main)만 업데이트** (로컬 main은 그대로!)
- 스테이징 영역이나 워킹 디렉토리에는 영향 없음
- 안전하게 원격 변경사항을 먼저 확인하고 싶을 때 사용

### pull - fetch + merge
- `git pull`: fetch한 뒤 자동으로 현재 브랜치에 merge
- `git pull` = `git fetch` + `git merge origin/main`
- 편하지만 예상치 못한 충돌이 발생할 수 있음

## fetch vs pull 차이

| 구분 | fetch | pull |
|------|-------|------|
| 동작 | 다운로드만 | 다운로드 + 병합 |
| 안전성 | 안전 (확인 후 병합 가능) | 바로 병합 (충돌 가능) |
| 업데이트 대상 | 원격 추적 브랜치만 | 원격 추적 브랜치 + 로컬 브랜치 |
| 사용 시점 | 변경사항 먼저 확인할 때 | 바로 최신 상태로 맞출 때 |

## 흐름 정리

```
[원격 저장소]  ←── push ──  [로컬 저장소]
     │                          ↑
     │── fetch → [origin/main] ─┤
     │                          │
     └── pull ──────────────────┘
              (fetch + merge)
```
