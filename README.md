# PowerSniffer 2.0

Start blank for a rectangular two-piece OpenSCAD enclosure.

- `powersniffer2_case.scad` previews the raised bottom half, TP4056 clamp, and inverted lid by default.
- `preview.scad` shows the bottom half with battery, INA219, and TP4056 reference blocks.
- `bottom.scad` renders only the bottom half.
- `top.scad` renders only the top half.
- `tp4056_clamp.scad` renders only the separate TP4056 clamp.
- The bottom half currently contains a first-pass cut pocket for a `42 x 20 x 6 mm` LiPo pack.
- INA219 mount geometry is enabled by default: two M2 bosses, three side wire holes, and a bottom terminal-block window.
- TP4056 USB-C side cutout is enabled by default.
- TP4056 has a separate removable clamp printed next to the body, with two M2 screw holes and a rear-edge board slot.
- The TP4056 clamp also has two short L-shaped top slide rails for a `18.5 mm` wide controller board, plus two lower `7 mm` TP4056 guide rails extended toward the USB-C window.
- The bottom half has a raised upper wall level and a deeper perimeter recess for the lid rim.
- The lid has experimental snap bumps on the skirt with matching through-pockets in the bottom shell.
- The lid has a centered `24.6 x 16.6 mm` nominal display window cutout with `0.3 mm` clearance per side and four centered display pins for a `27 x 24.7 mm` board with `20.5 x 23.3 mm` hole spacing.
- The lid has an internal centered relief pocket below the display window for the display flex cable, stretched toward the nearest wall.
- The lid also has a left-side `4.8 x 8 mm` nominal cutout, centered on Y and offset `9 mm` from the left outer wall, with `0.5 mm` clearance per side.
- Exterior styling is enabled by default: a shallow lid border, engraved `PowerSniffer 2.0` label, and shallow side grooves on the body.
- Reference blocks are disabled in the printable files, because OpenSCAD exports them as real STL geometry.

Set `part_override = "both";` before including `powersniffer2_case.scad` to show both halves.
Set `lid_snap_override = false;` before including `powersniffer2_case.scad` to hide the experimental lid snap bumps.
Set `ina219_mount_override = false;` before including `powersniffer2_case.scad` to hide the INA219 bosses and cutouts.
Set `tp4056_clamp_override = false;` before including `powersniffer2_case.scad` to hide the separate TP4056 clamp.
Set `controller_rail_override = false;` before including `powersniffer2_case.scad` to hide the controller rails on the TP4056 clamp.
Set `display_window_override = false;` before including `powersniffer2_case.scad` to hide the lid display window.
Set `display_flex_relief_override = false;` before including `powersniffer2_case.scad` to hide the display flex relief pocket.
Set `display_mount_override = false;` before including `powersniffer2_case.scad` to hide the display pins.
Set `left_lid_window_override = false;` before including `powersniffer2_case.scad` to hide the left lid window.
Set `lid_style_override = false;` before including `powersniffer2_case.scad` to hide the lid exterior styling.
Set `body_style_override = false;` before including `powersniffer2_case.scad` to hide the body exterior styling.

Tune the main dimensions at the top of `powersniffer2_case.scad`.
