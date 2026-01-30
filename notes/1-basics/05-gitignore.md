# .gitignore - 추적 제외 파일 설정

## 개념

`.gitignore` 파일에 패턴을 작성하면 Git이 해당 파일들을 무시함

### 추적하면 안 되는 것들
- 비밀 정보 (`.env`, credentials)
- 빌드 결과물 (`dist/`, `build/`)
- 의존성 폴더 (`node_modules/`)
- OS/에디터 파일 (`.DS_Store`, `.vscode/`)
- 로그 파일 (`*.log`)

---

## 문법

| 패턴 | 의미 | 예시 |
|------|------|------|
| `파일명` | 해당 파일 무시 | `secret.txt` |
| `*.확장자` | 해당 확장자 전체 | `*.log` |
| `폴더/` | 해당 폴더 전체 | `node_modules/` |
| `!파일명` | 예외 (무시 안 함) | `!important.log` |
| `#` | 주석 | `# 이건 주석` |
| `**/` | 모든 하위 경로 | `**/temp/` |

---

## 예시

```gitignore
# macOS 시스템 파일
.DS_Store
._*

# 비밀 정보
.env
.env.local

# 로그 파일
*.log

# 임시 폴더
temp/

# 의존성
node_modules/

# 빌드 결과물
dist/
build/

# IDE
.idea/
.vscode/
```

---

## 언어별 자주 쓰는 패턴

### Node.js
```
node_modules/
npm-debug.log
```

### Python
```
__pycache__/
*.pyc
.venv/
```

### Java
```
*.class
target/
```

---

## 이미 추적 중인 파일을 무시하려면?

`.gitignore`는 아직 추적하지 않는 파일에만 적용됨

```bash
git rm --cached 파일명     # 추적 중단 (파일은 유지)
# 그 후 .gitignore에 추가
```

---

## 무시된 파일 확인

```bash
git status --ignored -s    # !! 로 표시됨
```

---

## 주의사항
- `.gitignore`도 커밋해야 팀원과 공유됨
- [gitignore.io](https://gitignore.io)에서 언어별 템플릿 생성 가능
