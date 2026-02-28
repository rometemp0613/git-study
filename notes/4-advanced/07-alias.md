# Git Alias - 자주 쓰는 명령어 단축키

## 핵심 개념

Git Alias는 자주 쓰는 긴 명령어를 짧은 단축키로 등록하는 기능.

## 기본 문법

```bash
git config --global alias.<단축키> '<원래 명령어>'
```

`git` 뒤에 오는 부분만 적음. 앞의 `git`은 빼고!

## 자주 쓰는 alias 예시

```bash
git config --global alias.st 'status'
git config --global alias.co 'checkout'
git config --global alias.br 'branch'
git config --global alias.ci 'commit'
git config --global alias.cm 'commit -m'
git config --global alias.lo 'log --oneline'
git config --global alias.lg 'log --oneline --graph --all --decorate'
```

## alias 관리

```bash
# 등록된 alias 전체 보기
git config --global --get-regexp alias

# 특정 alias 확인
git config --global alias.st

# alias 삭제
git config --global --unset alias.st

# 설정 파일 직접 편집
git config --global --edit
```

## 저장 위치

| 옵션 | 저장 파일 | 범위 |
|------|----------|------|
| `--global` | `~/.gitconfig` | 모든 저장소 |
| `--local` (기본) | `.git/config` | 해당 저장소만 |

## 설정 파일 형식

`~/.gitconfig` 파일을 열면:

```ini
[alias]
    st = status
    co = checkout
    br = branch
    lg = log --oneline --graph --all --decorate
```

## 셸 명령어 alias (! 접두사)

Git 명령어가 아닌 셸 명령어는 `!`를 앞에 붙여서 등록:

```bash
git config --global alias.visual '!gitk'
```

## 핵심 정리

- alias는 `git config`로 등록하거나 `~/.gitconfig` 파일을 직접 편집
- `--global`은 전체, `--local`은 해당 레포만
- 셸 명령어는 `!` 접두사 필수
- `--get-regexp alias`로 목록 확인, `--unset`으로 삭제
