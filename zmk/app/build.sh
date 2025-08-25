#!/bin/bash
rm -rf ./build
rm zmk_left.uf2
rm zmk_right.uf2


#west build -d build/left -b nice_nano_v2 -- -DSHIELD=kc_1_left
west build -d build/left -p always -b nice_nano_v2 -- -DSHIELD=kc1_left
cp ./build/left/zephyr/zmk.uf2 ./zmk_left.uf2
#west build -d build/right -p always -b nice_nano_v2 -S zmk-usb-logging -- -DSHIELD=kc_1_right
west build -d build/right -b nice_nano_v2 -- -DSHIELD=kc1_right
cp ./build/right/zephyr/zmk.uf2 ./zmk_right.uf2







