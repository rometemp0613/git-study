# Fork

## Fork란?

GitHub에서 다른 사람의 레포를 **내 계정으로 복사**하는 것. 서버 간 복사(GitHub → GitHub).
원본에 push 권한이 없을 때, Fork해서 작업 후 PR로 기여하는 방식.

## Fork vs Clone

| | Fork | Clone |
|------|------|-------|
| 어디서 | GitHub → GitHub (서버 간) | GitHub → 내 PC (로컬) |
| 결과 | 내 계정에 레포 생성 | 내 PC에 폴더 생성 |
| push | 내 Fork에 가능 | 원본에는 권한 필요 |
| 용도 | 오픈소스 기여 | 일반적인 작업 |

## Remote 구조

Fork 후에는 remote가 2개:

```
origin   → 내 Fork (push 가능)
upstream → 원본 레포 (읽기용)
```

## 오픈소스 기여 흐름

```
1. Fork (GitHub에서 내 계정으로 복사)
2. Clone (내 PC로 다운로드)
3. git remote add upstream <원본URL> (upstream 설정)
4. 브랜치 만들고 작업
5. git push origin <브랜치> (내 Fork에 push)
6. 원본 레포에 PR 생성
7. 원본 관리자가 리뷰 후 머지
```

## Upstream 동기화

내 Fork를 원본 최신 상태로 맞추기:

```bash
git fetch upstream          # 원본 최신 가져오기
git switch main             # main으로 이동
git merge upstream/main     # 원본과 합치기
git push origin main        # 내 Fork에도 반영
```

동기화 안 하면 PR 만들 때 충돌 발생 가능!

## 주요 명령어

```bash
# Fork + Clone + upstream 한 번에
gh repo fork <원본레포> --clone=true

# upstream 수동 설정
git remote add upstream <원본URL>

# upstream 동기화
git fetch upstream
git merge upstream/main

# 원본에 PR 보내기
gh pr create --repo <원본레포> --title "제목" --body "설명"
```
