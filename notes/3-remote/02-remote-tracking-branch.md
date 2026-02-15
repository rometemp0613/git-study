# 원격 추적 브랜치 (Remote Tracking Branch)

## 핵심 개념

### 원격 추적 브랜치란?
- `origin/main` 같은 브랜치
- "마지막으로 확인한 원격 저장소의 상태"를 기억하는 포인터
- 로컬에 존재하지만 직접 수정 불가 (읽기 전용)
- fetch나 push할 때 자동으로 업데이트됨

### 왜 필요한가?
- 원격과 로컬의 차이를 비교할 수 있음
- 네트워크 없이도 "마지막으로 확인한 원격 상태"를 알 수 있음
- `git log origin/main..main`으로 아직 push 안 한 커밋 확인 가능

## 주요 명령어

### 브랜치 확인
- `git branch -r`: 원격 추적 브랜치만 보기 (origin/main 등)
- `git branch -a`: 로컬 + 원격 추적 브랜치 모두 보기
- `git branch -vv`: 로컬 브랜치의 upstream 연결 상태 확인

### upstream 설정
- `git push -u origin main`: push하면서 upstream 설정
- `git branch -u origin/main`: 현재 브랜치의 upstream을 origin/main으로 설정
- upstream이 설정되면 `git push`, `git pull`만으로 동작

### 원격 추적 브랜치가 업데이트되는 시점
1. **fetch할 때**: 원격의 최신 상태를 origin/main에 반영
2. **push할 때**: push 성공 후 origin/main도 업데이트
3. **pull할 때**: 내부적으로 fetch하므로 origin/main 업데이트

## 구조 다이어그램

```
[원격 저장소]
  └── main (커밋 C)

[로컬 저장소]
  ├── main          (커밋 B)  ← 내가 작업하는 브랜치
  └── origin/main   (커밋 A)  ← 마지막 fetch/push 시점의 원격 상태

fetch 후:
  ├── main          (커밋 B)  ← 그대로
  └── origin/main   (커밋 C)  ← 원격과 동기화됨!
```

## 자주 하는 실수
- fetch가 스테이징 영역에 가져온다고 착각 → **원격 추적 브랜치를 업데이트하는 것!**
- push하면 origin/main은 안 바뀐다고 착각 → **push도 origin/main을 업데이트함!**
