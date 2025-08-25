# KC-1 (custom shield derived from Quefrency)

## Files
- `kc_1.dtsi` — matrix-transform and /chosen
- `kc_1_left.overlay` / `kc_1_right.overlay` — kscan pins, right-half col-offset
- `kc_1.keymap` — logical layout
- `Kconfig.shield` — shield symbols
- `CMakeLists.txt` — stub

## Build
Right half (example):
```
west build -d build/right -p always -b nice_nano_v2 -S zmk-usb-logging -- -DSHIELD=kc_1_right
```

Left half:
```
west build -d build/left -p always -b nice_nano_v2 -S zmk-usb-logging -- -DSHIELD=kc_1_left
```

## Notes
- `kc_1_right.overlay` expects `&default_transform { col-offset = <7>; }` (copied from your setup).
- The transform last row right cluster uses global columns: 7,8,10,11,12,13,14,15.
- If your kscan `col-gpios` order changes, re-measure (row,col) and rearrange RC(...) accordingly.
