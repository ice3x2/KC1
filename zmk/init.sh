#!/bin/bash

# ZMK 프로젝트 초기화 스크립트
# 이 스크립트는 ZMK 원본 레포지토리를 받아서 현재 디렉토리에 설정하되,
# 기존의 build.sh와 kc1 커스텀 보드 설정은 보존합니다.

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TEMP_DIR=$(mktemp -d)

echo "=== ZMK 프로젝트 초기화 시작 ==="

# 1. 기존 커스텀 파일들 백업
echo "1. 커스텀 파일들 백업 중..."
mkdir -p "$TEMP_DIR/backup/app/boards/shields"
if [ -f "$SCRIPT_DIR/app/build.sh" ]; then
    cp "$SCRIPT_DIR/app/build.sh" "$TEMP_DIR/backup/app/"
    echo "   - build.sh 백업 완료"
fi
if [ -d "$SCRIPT_DIR/app/boards/shields/kc1" ]; then
    cp -r "$SCRIPT_DIR/app/boards/shields/kc1" "$TEMP_DIR/backup/app/boards/shields/"
    echo "   - kc1 디렉토리 백업 완료"
fi

# 2. ZMK 원본 레포지토리 클론
echo "2. ZMK 원본 레포지토리 클론 중..."
git clone https://github.com/zmkfirmware/zmk.git "$TEMP_DIR/zmk"
echo "   - 클론 완료"

# 3. 현재 디렉토리 정리 (git 디렉토리와 백업된 파일들 제외)
echo "3. 현재 디렉토리 정리 중..."
find "$SCRIPT_DIR" -mindepth 1 -maxdepth 1 -not -name '.git' -not -name 'init.sh' -exec rm -rf {} \;

# 4. ZMK 파일들 복사
echo "4. ZMK 파일들 복사 중..."
cp -r "$TEMP_DIR/zmk/"* "$SCRIPT_DIR/"
cp "$TEMP_DIR/zmk/.gitignore" "$SCRIPT_DIR/" 2>/dev/null || true
cp "$TEMP_DIR/zmk/.github" "$SCRIPT_DIR/" 2>/dev/null || true
echo "   - ZMK 파일들 복사 완료"

# 5. 백업된 커스텀 파일들 복원
echo "5. 커스텀 파일들 복원 중..."
if [ -f "$TEMP_DIR/backup/app/build.sh" ]; then
    cp "$TEMP_DIR/backup/app/build.sh" "$SCRIPT_DIR/app/"
    echo "   - build.sh 복원 완료"
fi
if [ -d "$TEMP_DIR/backup/app/boards/shields/kc1" ]; then
    cp -r "$TEMP_DIR/backup/app/boards/shields/kc1" "$SCRIPT_DIR/app/boards/shields/"
    echo "   - kc1 디렉토리 복원 완료"
fi

# 6. 임시 디렉토리 정리
echo "6. 정리 중..."
rm -rf "$TEMP_DIR"

# 7. West 초기화 (ZMK 개발 환경 설정)
echo "7. West 초기화 중..."
if command -v west >/dev/null 2>&1; then
    cd "$SCRIPT_DIR"
    west init -l app/
    west update
    echo "   - West 초기화 완료"
else
    echo "   - West가 설치되지 않았습니다. 수동으로 'west init -l app/ && west update'를 실행하세요."
fi

echo ""
echo "=== ZMK 프로젝트 초기화 완료 ==="
echo "커스텀 보드 설정: app/boards/shields/kc1/"
echo "빌드 스크립트: app/build.sh"
echo ""
echo "빌드 방법:"
echo "  ./app/build.sh"
echo ""