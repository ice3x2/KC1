#!/usr/bin/env bash
set -euo pipefail

# 1) build.sh가 위치한 디렉터리 확인
SCRIPT_DIR="$(cd -- "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 2) 해당 디렉터리로 이동 (일반적으로 zmk/app)
cd "$SCRIPT_DIR"

echo "== KC1 ZMK Build =="
echo "WORK_DIR: $(pwd)"
command -v west >/dev/null 2>&1 || { echo "error: west not found"; exit 127; }

# 3) 빌드 수행 (좌/우)
# -p always: 각 빌드 디렉터리(pristine)만 초기화
west build -d build/left  -p always -b nice_nano_v2 -- -DSHIELD=kc1_left
cp build/left/zephyr/zmk.uf2  zmk_left.uf2

west build -d build/right -p always -b nice_nano_v2 -- -DSHIELD=kc1_right
cp build/right/zephyr/zmk.uf2 zmk_right.uf2

echo ""
echo "== 완료 =="
echo "생성물:"
echo "  $(pwd)/zmk_left.uf2"
echo "  $(pwd)/zmk_right.uf2"

