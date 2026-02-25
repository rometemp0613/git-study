# Tag - 버전 표시

## 핵심 개념

- **tag**: 특정 커밋에 붙이는 영구 이름표. 브랜치와 달리 움직이지 않는 포인터
- 브랜치 = 움직이는 포인터, 태그 = 고정 포인터

## 두 종류의 tag

### Lightweight tag
- 이름만 붙이는 태그. 메타데이터 없음
- `git tag v0.1`

### Annotated tag ⭐
- 만든 사람, 날짜, 메시지 포함. Git 객체로 저장됨
- `git tag -a v1.0 -m "정식 릴리즈"`
- 실무에서는 거의 항상 annotated tag 사용

## 주요 명령어

| 명령어 | 설명 |
|--------|------|
| `git tag` | tag 목록 보기 |
| `git tag -l "v1.*"` | 패턴으로 필터링 (-l 필수!) |
| `git show v1.0` | tag 상세 정보 |
| `git tag -a v1.0 -m "메시지"` | annotated tag 생성 |
| `git tag -a v0.5 -m "msg" <해시>` | 과거 커밋에 tag 붙이기 |
| `git tag -d v1.0` | 로컬 tag 삭제 |
| `git push origin v1.0` | 특정 tag push |
| `git push origin --tags` | 모든 tag push |
| `git push origin --delete v1.0` | 원격 tag 삭제 |

## 중요 포인트

- **git push만 하면 tag는 안 올라감!** 반드시 별도로 push 필요
- 이유: 테스트용 임시 tag까지 자동으로 올라가는 걸 방지
- 로컬 + 원격 둘 다 삭제해야 완전히 제거됨
