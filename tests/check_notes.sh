#!/bin/bash
# notes/ 폴더에 파일이 있는지 확인하는 간단한 테스트

echo "=== 학습 노트 검증 테스트 ==="

# 테스트 1: notes 폴더 존재 확인
if [ -d "notes" ]; then
    echo "✅ PASS: notes/ 폴더 존재"
else
    echo "❌ FAIL: notes/ 폴더 없음"
    exit 1
fi

# 테스트 2: README.md 존재 확인
if [ -f "README.md" ]; then
    echo "✅ PASS: README.md 존재"
else
    echo "❌ FAIL: README.md 없음"
    exit 1
fi

# 테스트 3: CLAUDE.md 존재 확인
if [ -f "CLAUDE.md" ]; then
    echo "✅ PASS: CLAUDE.md 존재"
else
    echo "❌ FAIL: CLAUDE.md 없음"
    exit 1
fi

echo ""
echo "=== 모든 테스트 통과! ==="
exit 0

