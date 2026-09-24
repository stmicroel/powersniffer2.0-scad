# PowerSniffer 2.0

OpenSCAD model for a compact two-piece PowerSniffer enclosure.

## What is included

- Bottom shell with raised internal deck and LiPo pocket.
- Lid with skirt, display window, display mounting pins, side window, and shallow exterior styling.
- INA219 mount with M2 bosses, side wire holes, and terminal-block bottom window.
- TP4056 USB-C cutout and a separate removable TP4056 clamp with controller rails.
- Optional preview reference blocks for the battery, INA219, and TP4056 boards.

## Files

- `powersniffer2_case.scad` - main parametric model.
- `preview.scad` - bottom shell with reference electronics.
- `bottom.scad` - bottom shell only.
- `top.scad` - lid only.
- `tp4056_clamp.scad` - separate TP4056 clamp only.
- `print-ready/` - checked 3MF files that are known to be printable.

## Notes

Reference blocks are disabled in printable entry points, because OpenSCAD exports them as real geometry.

Most dimensions and feature switches are at the top of `powersniffer2_case.scad`.
For example, set `part_override = "both";` before including the main file to show both halves together.
