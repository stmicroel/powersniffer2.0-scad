//
// PowerSniffer 2.0 case
// Start blank: rectangular two-piece enclosure.
//

$fn = 64;

// =========================
// VIEW
// =========================

// "bottom", "top", "both", or "tp4056_clamp"
show_part = is_undef(part_override) ? "bottom" : part_override;
top_preview_gap = 14;

// =========================
// MAIN PARAMETERS
// =========================

device_len = 52.0;
device_wid = 28.0;

clearance_xy = 1.5;
wall = 2.0;
floor_thickness = 1.6;
top_thickness = 2.0;

corner_r = 4.0;
fit_clearance = 0.15;

// Upper case level and lid fit.
case_wall_extra_h = 5.0;
lid_recess_depth = 3.0;
lid_recess_wall = 1.2;
lid_overlap_height = 2.8;
lid_wall = 1.2;
show_lid_in_bottom_scene = is_undef(show_lid_override) ? true : show_lid_override;

// Small snap bumps on the lid skirt with matching pockets in the bottom shell.
lid_snap_enabled = is_undef(lid_snap_override) ? true : lid_snap_override;
lid_snap_d = 1.2;
lid_snap_pocket_d = 1.8;
lid_snap_pocket_depth = wall + 0.8;
lid_snap_x_spacing = 34.0;
lid_snap_z = top_thickness + lid_overlap_height / 2;

// Exterior lid styling. These are shallow cuts on the outside face only.
lid_style_enabled = is_undef(lid_style_override) ? true : lid_style_override;
lid_style_cut_depth = 0.28;
lid_style_border_inset = 3.0;
lid_style_border_w = 0.55;
lid_label_text = "PowerSniffer 2.0";
lid_label_size = 3.8;
lid_label_y = 6.4;
lid_label_depth = 0.4;
lid_label_font = "Liberation Sans:style=Bold";
body_style_enabled = is_undef(body_style_override) ? true : body_style_override;
body_side_groove_h = 0.65;
body_side_groove_depth = 0.35;
body_side_groove_len_margin = 7.0;

// Centered display opening in the lid.
display_window_enabled = is_undef(display_window_override) ? true : display_window_override;
display_window_len = 24.6;
display_window_wid = 16.6;
display_window_clearance = 0.3;
display_flex_relief_enabled = is_undef(display_flex_relief_override) ? true : display_flex_relief_override;
display_flex_relief_w = 11.0;
display_flex_relief_wall_margin = 1.2;
display_flex_relief_skin = 0.6;
display_mount_enabled = is_undef(display_mount_override) ? true : display_mount_override;
display_board_len = 27.0;
display_board_wid = 24.7;
display_hole_spacing_x = 20.5;
display_hole_spacing_y = 23.3;
display_hole_d = 2.8;
display_pin_d = 2.55;
display_pin_h = 3.0;
left_lid_window_enabled = is_undef(left_lid_window_override) ? true : left_lid_window_override;
left_lid_window_x = 9.0;
left_lid_window_len_x = 4.8;
left_lid_window_len_y = 8.0;
left_lid_window_clearance = 0.5;

// Simple screw bosses for the first mechanical layout pass.
screw_enabled = false;
screw_clearance_d = 3.2;
screw_insert_pilot_d = 4.0;
screw_boss_d = 8.0;
screw_inset = 8.0;

// =========================
// BATTERY
// =========================

show_battery_reference = is_undef(show_battery_override) ? false : show_battery_override;

// LiPo 602040 measured pack size: 42 x 20 x 6 mm.
battery_len = 42.0;
battery_wid = 20.0;
battery_h = 6.0;

battery_clearance_xy = 0.7;
battery_clearance_z = 0.8;

// First floor is a solid internal deck with the battery pocket cut into it.
battery_deck_h = battery_h + battery_clearance_z;

// Wire relief on the left short side of the battery pocket.
battery_wire_gap_w = 8.0;
battery_wire_gap_depth = 3.0;

// Small opposite cutout for lifting the pack out of the pocket.
battery_lift_gap_w = 9.0;
battery_lift_gap_depth = 2.5;

// =========================
// INA219 CURRENT SENSOR
// =========================

ina219_mount_enabled = is_undef(ina219_mount_override) ? true : ina219_mount_override;
show_ina219_reference = is_undef(show_ina219_override) ? false : show_ina219_override;

ina219_len = 25.2;
ina219_wid = 22.2;
ina219_pcb_thickness = 1.5;

// Terminal block is on the right side and faces the side wall.
ina219_terminal_len = 7.0;
ina219_terminal_wid = 6.8;
ina219_terminal_h = 8.0;
ina219_terminal_clearance = 0.5;
ina219_terminal_wire_hole_d = 2.6;
ina219_terminal_wire_hole_spacing = 3.4;
ina219_terminal_wire_hole_z = 6.3;
ina219_terminal_center_wire_hole_z_offset = 5.0;

// Two mounting holes on the terminal side.
ina219_hole_spacing = 20.0;
ina219_hole_from_terminal_edge = 2.2;
ina219_hole_d = 2.5;

// M2 heat-set insert M2*3*3.2.
ina219_boss_d = 5.5;
ina219_insert_pilot_d = 3.05;
ina219_insert_len = 3.0;
ina219_boss_lift_above_battery = 1.1;
ina219_boss_height_from_battery_floor = battery_h + ina219_boss_lift_above_battery;

// Reference only: SOIC-8 INA219 body height, excluding the terminal block.
ina219_chip_h = 1.75;
ina219_chip_len = 5.0;
ina219_chip_wid = 4.0;

// Side steps reduce the loose gap between INA219 board edges and case walls.
ina219_side_fill_enabled = is_undef(ina219_side_fill_override) ? true : ina219_side_fill_override;
ina219_side_fill_clearance = 2.4;
ina219_side_fill_x_margin = 3.2;
ina219_side_fill_terminal_margin = 0.0;
ina219_side_fill_bottom_overlap = 0.2;
ina219_side_fill_h = ina219_pcb_thickness + 0.7;

// Longitudinal window in the upper Y side wall. It ends flush with the
// INA219 side-step corner and starts at the battery pocket deck level.
upper_side_window_enabled = is_undef(upper_side_window_override) ? true : upper_side_window_override;
upper_side_window_len = 10.0;
upper_side_window_h = 2.4;

// =========================
// TP4056 CHARGER
// =========================

show_tp4056_reference = is_undef(show_tp4056_override) ? false : show_tp4056_override;

tp4056_len = 18.0;
tp4056_wid = 14.0;
tp4056_pcb_thickness = 1.4;

// USB-C is centered on the board width and almost flush with the left wall.
tp4056_usb_protrusion = 2.0;
tp4056_usb_inset_from_outer_wall = 0.3;
tp4056_usb_w = 9.2;
tp4056_usb_h = 3.2;
tp4056_usb_clearance = 0.4;
tp4056_component_h = 2.2;

// Removable clamp for the rear edge of TP4056.
tp4056_clamp_enabled = is_undef(tp4056_clamp_override) ? true : tp4056_clamp_override;
tp4056_clamp_gap = 8.0;
tp4056_clamp_len = 4.2;
tp4056_clamp_pad_margin = 0.0;
tp4056_clamp_h = 3.4;
tp4056_clamp_slot_depth = 1.5;
tp4056_clamp_lower_lip = 0.6;
tp4056_clamp_slot_h = 1.6;
tp4056_clamp_slot_w_clearance = 0.3;
tp4056_clamp_screw_clearance_d = 2.3;
tp4056_clamp_screw_head_d = 4.2;
tp4056_clamp_screw_head_depth = 1.0;
tp4056_clamp_screw_wrap_angle = 225;
tp4056_clamp_screw_wrap = (tp4056_clamp_screw_head_d / 2) * cos((360 - tp4056_clamp_screw_wrap_angle) / 2);
tp4056_clamp_insert_pilot_d = ina219_insert_pilot_d;
tp4056_clamp_insert_len = ina219_insert_len;
tp4056_clamp_screw_from_board_rear = 0.4;
tp4056_clamp_screw_y_shift = -0.5;
tp4056_clamp_slot_y_offset = 0.5;

// Controller board slide rails on top of the TP4056 clamp.
controller_rail_enabled = is_undef(controller_rail_override) ? true : controller_rail_override;
controller_board_wid = 18.5;
controller_board_thickness = 1.5;
controller_rail_y_offset = tp4056_clamp_slot_y_offset;
controller_rail_clearance = 0.25;
controller_rail_wall = 0.8;
controller_rail_grip_depth = 2.5;
controller_rail_slot_h = controller_board_thickness + 0.25;
controller_rail_lip_h = 0.8;
controller_rail_len = tp4056_clamp_len;

// Lower guide rails run along the TP4056 bottom toward the USB-C window.
tp4056_lower_rail_len = 7.0;
tp4056_lower_rail_anchor_overlap = 0.3;
tp4056_lower_rail_w = 3;
tp4056_lower_rail_h = 0.8;
tp4056_lower_rail_end_hook_len = 1.2;
tp4056_lower_whisker_len = 1.8;
tp4056_lower_whisker_depth = 2.5;
tp4056_lower_whisker_h = 0.55;

// =========================
// DERIVED
// =========================

inner_len = device_len + clearance_xy * 2;
inner_wid = device_wid + clearance_xy * 2;

outer_len = inner_len + wall * 2;
outer_wid = inner_wid + wall * 2;

bottom_inner_height = max(
    battery_deck_h,
    ina219_mount_enabled ? ina219_boss_height_from_battery_floor : battery_deck_h,
    battery_deck_h + tp4056_pcb_thickness + tp4056_usb_h + tp4056_usb_clearance
    ) + case_wall_extra_h;

bottom_outer_h = floor_thickness + bottom_inner_height;
top_outer_h = top_thickness + lid_overlap_height;

lid_recess_outer_len = outer_len - lid_recess_wall * 2;
lid_recess_outer_wid = outer_wid - lid_recess_wall * 2;
lid_recess_inner_len = inner_len;
lid_recess_inner_wid = inner_wid;

lid_skirt_outer_len = lid_recess_outer_len - fit_clearance * 2;
lid_skirt_outer_wid = lid_recess_outer_wid - fit_clearance * 2;
lid_skirt_inner_len = lid_skirt_outer_len - lid_wall * 2;
lid_skirt_inner_wid = lid_skirt_outer_wid - lid_wall * 2;

battery_slot_len = battery_len + battery_clearance_xy * 2;
battery_slot_wid = battery_wid + battery_clearance_xy * 2;
battery_slot_h = battery_h + battery_clearance_z;

battery_x = wall + (inner_len - battery_slot_len) / 2;
battery_y = wall + (inner_wid - battery_slot_wid) / 2;
battery_z = floor_thickness;

battery_center_x = battery_x + battery_slot_len / 2;
battery_center_y = battery_y + battery_slot_wid / 2;

ina219_x = wall + inner_len - ina219_len;
ina219_y = battery_center_y - ina219_wid / 2;
ina219_z = floor_thickness + ina219_boss_height_from_battery_floor;

ina219_terminal_x = ina219_x + ina219_len - ina219_terminal_len;
ina219_terminal_y = battery_center_y - ina219_terminal_wid / 2;

ina219_terminal_pocket_len = ina219_terminal_len + ina219_terminal_clearance * 2;
ina219_terminal_pocket_wid = ina219_terminal_wid + ina219_terminal_clearance * 2;

ina219_hole_x = ina219_x + ina219_len - ina219_hole_from_terminal_edge;

ina219_side_fill_x = ina219_x + ina219_side_fill_x_margin;
ina219_side_fill_len = wall + inner_len - ina219_side_fill_x;
ina219_side_fill_y1 = wall;
ina219_side_fill_w1 = max(0, ina219_y - ina219_side_fill_clearance - ina219_side_fill_y1);
ina219_side_fill_y2 = ina219_y + ina219_wid + ina219_side_fill_clearance;
ina219_side_fill_w2 = max(0, wall + inner_wid - ina219_side_fill_y2);

upper_side_window_x = ina219_side_fill_x - upper_side_window_len;
upper_side_window_y = outer_wid - wall - 0.1;
upper_side_window_z = floor_thickness + battery_deck_h;

tp4056_x = tp4056_usb_inset_from_outer_wall + tp4056_usb_protrusion;
tp4056_y = battery_center_y - tp4056_wid / 2;
tp4056_z = floor_thickness + battery_deck_h;

tp4056_usb_x = tp4056_x - tp4056_usb_protrusion;
tp4056_usb_y = battery_center_y - tp4056_usb_w / 2;
tp4056_usb_z = tp4056_z + tp4056_pcb_thickness;

tp4056_clamp_screw_x = tp4056_x + tp4056_len + tp4056_clamp_screw_from_board_rear;
tp4056_clamp_screw_y1 = battery_y / 2 + wall / 2 + tp4056_clamp_screw_y_shift;
tp4056_clamp_screw_y2 = battery_y + battery_slot_wid + (outer_wid - (battery_y + battery_slot_wid)) / 2 + tp4056_clamp_screw_y_shift;
tp4056_clamp_screw_spacing = tp4056_clamp_screw_y2 - tp4056_clamp_screw_y1;
tp4056_clamp_wid = tp4056_clamp_screw_spacing + tp4056_clamp_pad_margin * 2;

tp4056_clamp_part_x = outer_len + tp4056_clamp_gap;
tp4056_clamp_part_y = 0;
tp4056_clamp_part_z = controller_rail_enabled
    ? tp4056_clamp_h + controller_rail_slot_h + controller_rail_lip_h
    : tp4056_clamp_h;

module rounded_rect_2d(len, wid, r) {
    safe_r = min(r, min(len, wid) / 2 - 0.01);

    offset(r = safe_r)
        square([len - 2 * safe_r, wid - 2 * safe_r], center = true);
}

module rounded_box(len, wid, h, r) {
    linear_extrude(height = h)
        rounded_rect_2d(len, wid, r);
}

module rounded_rect_cutout_yz(w, h, depth, r) {
    translate([0, w / 2, h / 2])
        rotate([0, 90, 0])
            linear_extrude(height = depth)
                rounded_rect_2d(h, w, r);
}

module screw_positions() {
    for (x = [wall + screw_inset, outer_len - wall - screw_inset])
        for (y = [wall + screw_inset, outer_wid - wall - screw_inset])
            translate([x, y, 0])
                children();
}

module ina219_boss_positions() {
    for (y = [battery_center_y - ina219_hole_spacing / 2, battery_center_y + ina219_hole_spacing / 2])
        translate([ina219_hole_x, y, 0])
            children();
}

module tp4056_clamp_screw_positions() {
    for (y = [tp4056_clamp_screw_y1, tp4056_clamp_screw_y2])
        translate([tp4056_clamp_screw_x, y, 0])
            children();
}

module battery_pocket_deck() {
    difference() {
        translate([wall + inner_len / 2, wall + inner_wid / 2, floor_thickness])
            rounded_box(inner_len, inner_wid, battery_deck_h, max(corner_r - wall, 0.5));

        translate([battery_center_x, battery_center_y, floor_thickness - 0.1])
            rounded_box(battery_slot_len, battery_slot_wid, battery_deck_h + 0.2, 1.2);

        translate([battery_x - battery_wire_gap_depth, battery_center_y - battery_wire_gap_w / 2, floor_thickness - 0.1])
            cube([battery_wire_gap_depth + 0.2, battery_wire_gap_w, battery_deck_h + 0.2]);

        translate([battery_x + battery_slot_len - 0.2, battery_center_y - battery_lift_gap_w / 2, floor_thickness - 0.1])
            cube([battery_lift_gap_depth + 0.2, battery_lift_gap_w, battery_deck_h + 0.2]);

        if (ina219_mount_enabled) {
            translate([ina219_terminal_x - ina219_terminal_clearance, ina219_terminal_y - ina219_terminal_clearance, floor_thickness - 0.1])
                cube([ina219_terminal_pocket_len, ina219_terminal_pocket_wid, battery_deck_h + 0.2]);
        }
    }
}

module lid_recess_cutout() {
    translate([outer_len / 2, outer_wid / 2, bottom_outer_h - lid_recess_depth])
        difference() {
            rounded_box(lid_recess_outer_len, lid_recess_outer_wid, lid_recess_depth + 0.2, max(corner_r - lid_recess_wall, 0.5));

            translate([0, 0, -0.1])
                rounded_box(lid_recess_inner_len, lid_recess_inner_wid, lid_recess_depth + 0.4, max(corner_r - wall, 0.5));
        }
}

module battery_reference() {
    translate([battery_center_x, battery_center_y, battery_z + 0.05])
        rounded_box(battery_len, battery_wid, battery_h, 1.0);
}

module ina219_bosses() {
    ina219_boss_positions()
        cylinder(d = ina219_boss_d, h = floor_thickness + ina219_boss_height_from_battery_floor, center = false);
}

module ina219_insert_cutouts() {
    ina219_boss_positions()
        translate([0, 0, floor_thickness + ina219_boss_height_from_battery_floor - ina219_insert_len - 0.1])
                cylinder(d = ina219_insert_pilot_d, h = ina219_insert_len + 0.2, center = false);
}

module ina219_side_fill() {
    translate([ina219_side_fill_x, ina219_side_fill_y1, ina219_z - ina219_side_fill_bottom_overlap])
        cube([ina219_side_fill_len, ina219_side_fill_w1, ina219_side_fill_h]);

    translate([ina219_side_fill_x, ina219_side_fill_y2, ina219_z - ina219_side_fill_bottom_overlap])
        cube([ina219_side_fill_len, ina219_side_fill_w2, ina219_side_fill_h]);
}

module ina219_terminal_side_cutout() {
    for (y = [battery_center_y - ina219_terminal_wire_hole_spacing / 2, battery_center_y + ina219_terminal_wire_hole_spacing / 2])
        translate([outer_len - wall - 0.2, y, ina219_z - ina219_terminal_h + ina219_terminal_wire_hole_z])
            rotate([0, 90, 0])
                cylinder(d = ina219_terminal_wire_hole_d, h = wall + 0.4, center = false);

    translate([outer_len - wall - 0.2, battery_center_y, ina219_z - ina219_terminal_h + ina219_terminal_wire_hole_z + ina219_terminal_center_wire_hole_z_offset])
        rotate([0, 90, 0])
            cylinder(d = ina219_terminal_wire_hole_d, h = wall + 0.4, center = false);
}

module ina219_terminal_bottom_window() {
    translate([ina219_terminal_x - ina219_terminal_clearance, ina219_terminal_y - ina219_terminal_clearance, -0.1])
        cube([ina219_terminal_pocket_len, ina219_terminal_pocket_wid, floor_thickness + battery_deck_h + 0.2]);
}

module upper_side_wall_window() {
    translate([upper_side_window_x, upper_side_window_y, upper_side_window_z])
        cube([upper_side_window_len, wall + 0.3, upper_side_window_h + 0.1]);
}

module display_window_cutout() {
    translate([
        outer_len / 2 - display_window_len / 2 - display_window_clearance,
        outer_wid / 2 - display_window_wid / 2 - display_window_clearance,
        -0.1
    ])
        cube([
            display_window_len + display_window_clearance * 2,
            display_window_wid + display_window_clearance * 2,
            top_thickness + 0.2
        ]);
}

module display_flex_relief_cutout() {
    relief_depth = top_thickness - display_flex_relief_skin;
    relief_y = display_flex_relief_wall_margin;
    relief_h = outer_wid / 2 - display_window_wid / 2 - display_window_clearance - relief_y;

    translate([
        outer_len / 2 - display_flex_relief_w / 2,
        relief_y,
        top_thickness - relief_depth
    ])
        cube([display_flex_relief_w, relief_h, relief_depth + 0.1]);
}

module left_lid_window_cutout() {
    translate([
        left_lid_window_x - left_lid_window_clearance,
        outer_wid / 2 - left_lid_window_len_y / 2 - left_lid_window_clearance,
        -0.1
    ])
        cube([
            left_lid_window_len_x + left_lid_window_clearance * 2,
            left_lid_window_len_y + left_lid_window_clearance * 2,
            top_thickness + 0.2
        ]);
}

module display_mount_positions() {
    for (x = [outer_len / 2 - display_hole_spacing_x / 2, outer_len / 2 + display_hole_spacing_x / 2])
        for (y = [outer_wid / 2 - display_hole_spacing_y / 2, outer_wid / 2 + display_hole_spacing_y / 2])
            translate([x, y, 0])
                children();
}

module display_pins() {
    display_mount_positions()
        translate([0, 0, top_thickness])
            cylinder(d = display_pin_d, h = display_pin_h, center = false);
}

module lid_snap_positions(z_pos, y_min, y_max) {
    for (x = [outer_len / 2 - lid_snap_x_spacing / 2, outer_len / 2 + lid_snap_x_spacing / 2])
        for (y = [y_min, y_max])
            translate([x, y, z_pos])
                children();
}

module lid_snap_bumps() {
    lid_skirt_y_min = outer_wid / 2 - lid_skirt_outer_wid / 2;
    lid_skirt_y_max = outer_wid / 2 + lid_skirt_outer_wid / 2;

    lid_snap_positions(lid_snap_z, lid_skirt_y_min, lid_skirt_y_max)
        sphere(d = lid_snap_d);
}

module lid_snap_pockets() {
    lid_snap_pocket_z = bottom_outer_h - lid_recess_depth / 2;

    for (x = [outer_len / 2 - lid_snap_x_spacing / 2, outer_len / 2 + lid_snap_x_spacing / 2]) {
        translate([x, -0.1, lid_snap_pocket_z])
            rotate([-90, 0, 0])
                cylinder(d = lid_snap_pocket_d, h = lid_snap_pocket_depth + 0.1, center = false);

        translate([x, outer_wid + 0.1, lid_snap_pocket_z])
            rotate([90, 0, 0])
                cylinder(d = lid_snap_pocket_d, h = lid_snap_pocket_depth + 0.1, center = false);
    }
}

module lid_exterior_style_cutouts() {
    translate([outer_len / 2, outer_wid / 2, -0.05])
        linear_extrude(height = lid_style_cut_depth + 0.05)
            difference() {
                rounded_rect_2d(
                    outer_len - lid_style_border_inset * 2,
                    outer_wid - lid_style_border_inset * 2,
                    max(corner_r - lid_style_border_inset, 0.5)
                );

                rounded_rect_2d(
                    outer_len - (lid_style_border_inset + lid_style_border_w) * 2,
                    outer_wid - (lid_style_border_inset + lid_style_border_w) * 2,
                    max(corner_r - lid_style_border_inset - lid_style_border_w, 0.5)
                );
            }

    translate([outer_len / 2, lid_label_y, -0.05])
        linear_extrude(height = lid_label_depth + 0.05)
            mirror([1, 0, 0])
                text(lid_label_text, size = lid_label_size, font = lid_label_font, halign = "center", valign = "center");
}

module body_exterior_style_cutouts() {
    groove_z = bottom_outer_h - lid_recess_depth - 2.2;
    groove_len = outer_len - body_side_groove_len_margin * 2;

    translate([body_side_groove_len_margin, -0.1, groove_z])
        cube([groove_len, body_side_groove_depth + 0.1, body_side_groove_h]);

    translate([body_side_groove_len_margin, outer_wid - body_side_groove_depth, groove_z])
        cube([groove_len, body_side_groove_depth + 0.1, body_side_groove_h]);
}

module ina219_reference() {
    color("#174f94", 0.65)
        translate([ina219_x, ina219_y, ina219_z])
            cube([ina219_len, ina219_wid, ina219_pcb_thickness]);

    color("#202020", 0.75)
        translate([ina219_x + ina219_len / 2 - ina219_chip_len / 2, battery_center_y - ina219_chip_wid / 2, ina219_z - ina219_chip_h])
            cube([ina219_chip_len, ina219_chip_wid, ina219_chip_h]);

    color("#1d8f5a", 0.65)
        translate([ina219_terminal_x, ina219_terminal_y, ina219_z - ina219_terminal_h])
            cube([ina219_terminal_len, ina219_terminal_wid, ina219_terminal_h]);

    color("#ffffff", 0.8)
        ina219_boss_positions()
            translate([0, 0, ina219_z + 0.02])
                cylinder(d = ina219_hole_d, h = 0.2, center = false);
}

module tp4056_usb_cutout() {
    translate([-0.1, battery_center_y - (tp4056_usb_w + tp4056_usb_clearance * 2) / 2, tp4056_usb_z - tp4056_usb_clearance])
        rounded_rect_cutout_yz(
            tp4056_usb_w + tp4056_usb_clearance * 2,
            tp4056_usb_h + tp4056_usb_clearance * 2,
            wall + 0.4,
            (tp4056_usb_h + tp4056_usb_clearance * 2) / 2
        );
}

module tp4056_clamp_insert_cutouts() {
    tp4056_clamp_screw_positions()
        translate([0, 0, floor_thickness + battery_deck_h - tp4056_clamp_insert_len - 0.1])
            cylinder(d = tp4056_clamp_insert_pilot_d, h = tp4056_clamp_insert_len + 0.2, center = false);
}

module tp4056_reference() {
    color("#202020", 0.65)
        translate([tp4056_x, tp4056_y, tp4056_z])
            cube([tp4056_len, tp4056_wid, tp4056_pcb_thickness]);

    color("#b7bec7", 0.75)
        translate([tp4056_usb_x, tp4056_usb_y, tp4056_usb_z])
            cube([tp4056_usb_protrusion + 4.5, tp4056_usb_w, tp4056_usb_h]);

    color("#333333", 0.55)
        translate([tp4056_x + 7.0, battery_center_y - 2.0, tp4056_z + tp4056_pcb_thickness])
            cube([5.0, 4.0, tp4056_component_h]);
}

module tp4056_clamp_part() {
    translate([tp4056_clamp_part_x, tp4056_clamp_part_y, 0])
        translate([0, 0, tp4056_clamp_part_z])
        rotate([0, 90, 0])
        difference() {
            union() {
                translate([tp4056_clamp_len / 2, tp4056_clamp_wid / 2, 0])
                    rounded_box(tp4056_clamp_len, tp4056_clamp_wid + tp4056_clamp_screw_wrap * 2, tp4056_clamp_h, 1.2);

                if (controller_rail_enabled) {
                    controller_board_center_y = tp4056_clamp_wid / 2 + controller_rail_y_offset;
                    controller_board_y1 = controller_board_center_y - controller_board_wid / 2;
                    controller_board_y2 = controller_board_center_y + controller_board_wid / 2;
                    controller_rail_total_h = controller_rail_slot_h + controller_rail_lip_h;

                    // Lower-side L rail.
                    translate([0, controller_board_y1 - controller_rail_clearance - controller_rail_wall, tp4056_clamp_h])
                        cube([controller_rail_len, controller_rail_wall, controller_rail_total_h]);

                    translate([0, controller_board_y1 - controller_rail_clearance, tp4056_clamp_h + controller_rail_slot_h])
                        cube([controller_rail_len, controller_rail_grip_depth, controller_rail_lip_h]);

                    // Upper-side L rail.
                    translate([0, controller_board_y2 + controller_rail_clearance, tp4056_clamp_h])
                        cube([controller_rail_len, controller_rail_wall, controller_rail_total_h]);

                    translate([0, controller_board_y2 + controller_rail_clearance - controller_rail_grip_depth, tp4056_clamp_h + controller_rail_slot_h])
                        cube([controller_rail_len, controller_rail_grip_depth, controller_rail_lip_h]);

                    tp4056_slot_center_y = tp4056_clamp_wid / 2 + tp4056_clamp_slot_y_offset;
                    tp4056_slot_y1 = tp4056_slot_center_y - (tp4056_wid + tp4056_clamp_slot_w_clearance) / 2;
                    tp4056_slot_y2 = tp4056_slot_center_y + (tp4056_wid + tp4056_clamp_slot_w_clearance) / 2;
                    tp4056_lower_rail_x = -tp4056_lower_rail_len;
                    tp4056_lower_rail_total_len = tp4056_lower_rail_len + tp4056_lower_rail_anchor_overlap;
                    tp4056_lower_hook_y1 = controller_board_y1 - controller_rail_clearance - controller_rail_wall;
                    tp4056_lower_hook_y2 = controller_board_y2 + controller_rail_clearance + controller_rail_wall;

                    // Lower guide rails along the TP4056 underside, toward USB-C.
                    translate([tp4056_lower_rail_x, tp4056_slot_y1 - tp4056_lower_rail_w, 0])
                        cube([tp4056_lower_rail_total_len, tp4056_lower_rail_w, tp4056_lower_rail_h]);

                    translate([tp4056_lower_rail_x, tp4056_slot_y2, 0])
                        cube([tp4056_lower_rail_total_len, tp4056_lower_rail_w, tp4056_lower_rail_h]);

                    // Small bottom whiskers at the USB-side end hold the TP4056 edge.
                    translate([tp4056_lower_rail_x, tp4056_slot_y1, 0])
                        cube([tp4056_lower_whisker_len, tp4056_lower_whisker_depth, tp4056_lower_whisker_h]);

                    translate([tp4056_lower_rail_x, tp4056_slot_y2 - tp4056_lower_whisker_depth, 0])
                        cube([tp4056_lower_whisker_len, tp4056_lower_whisker_depth, tp4056_lower_whisker_h]);

                    // End bridges tie the USB-side L hooks back into the lower rails.
                    translate([tp4056_lower_rail_x, tp4056_lower_hook_y1, 0])
                        cube([tp4056_lower_rail_end_hook_len, tp4056_slot_y1 - tp4056_lower_hook_y1, tp4056_clamp_h]);

                    translate([tp4056_lower_rail_x, tp4056_slot_y2, 0])
                        cube([tp4056_lower_rail_end_hook_len, tp4056_lower_hook_y2 - tp4056_slot_y2, tp4056_clamp_h]);

                    // End hooks on the far USB-C side, analogous to the main top latch.
                    translate([tp4056_lower_rail_x, controller_board_y1 - controller_rail_clearance - controller_rail_wall, tp4056_clamp_h])
                        cube([tp4056_lower_rail_end_hook_len, controller_rail_wall, controller_rail_total_h]);

                    translate([tp4056_lower_rail_x, controller_board_y1 - controller_rail_clearance, tp4056_clamp_h + controller_rail_slot_h])
                        cube([tp4056_lower_rail_end_hook_len, controller_rail_grip_depth, controller_rail_lip_h]);

                    translate([tp4056_lower_rail_x, controller_board_y2 + controller_rail_clearance, tp4056_clamp_h])
                        cube([tp4056_lower_rail_end_hook_len, controller_rail_wall, controller_rail_total_h]);

                    translate([tp4056_lower_rail_x, controller_board_y2 + controller_rail_clearance - controller_rail_grip_depth, tp4056_clamp_h + controller_rail_slot_h])
                        cube([tp4056_lower_rail_end_hook_len, controller_rail_grip_depth, controller_rail_lip_h]);
                }
            }

            translate([-0.1, tp4056_clamp_wid / 2 + tp4056_clamp_slot_y_offset - (tp4056_wid + tp4056_clamp_slot_w_clearance) / 2, tp4056_clamp_lower_lip])
                cube([tp4056_clamp_slot_depth + 0.1, tp4056_wid + tp4056_clamp_slot_w_clearance, tp4056_clamp_slot_h]);

            for (y = [0, tp4056_clamp_wid])
                translate([tp4056_clamp_len / 2, y, -0.1])
                    cylinder(d = tp4056_clamp_screw_clearance_d, h = tp4056_clamp_h + 0.2, center = false);

            for (y = [0, tp4056_clamp_wid])
                translate([tp4056_clamp_len / 2, y, tp4056_clamp_h - tp4056_clamp_screw_head_depth])
                    cylinder(d1 = tp4056_clamp_screw_clearance_d, d2 = tp4056_clamp_screw_head_d, h = tp4056_clamp_screw_head_depth + 0.1, center = false);
        }
}

module bottom_half() {
    difference() {
        union() {
            difference() {
                translate([outer_len / 2, outer_wid / 2, 0])
                    rounded_box(outer_len, outer_wid, bottom_outer_h, corner_r);

                translate([wall + inner_len / 2, wall + inner_wid / 2, floor_thickness])
                    rounded_box(inner_len, inner_wid, bottom_inner_height + 0.2, max(corner_r - wall, 0.5));
            }

            if (screw_enabled) {
                screw_positions()
                    cylinder(d = screw_boss_d, h = bottom_inner_height, center = false);
            }

            battery_pocket_deck();

            if (ina219_mount_enabled) {
                ina219_bosses();
            }

            if (ina219_mount_enabled && ina219_side_fill_enabled) {
                ina219_side_fill();
            }

        }

        if (screw_enabled) {
            screw_positions()
                translate([0, 0, floor_thickness])
                    cylinder(d = screw_insert_pilot_d, h = bottom_inner_height + 0.4, center = false);
        }

        lid_recess_cutout();

        if (ina219_mount_enabled) {
            ina219_insert_cutouts();
            ina219_terminal_side_cutout();
            ina219_terminal_bottom_window();
        }

        if (upper_side_window_enabled) {
            upper_side_wall_window();
        }

        tp4056_usb_cutout();

        if (tp4056_clamp_enabled) {
            tp4056_clamp_insert_cutouts();
        }

        if (lid_snap_enabled) {
            lid_snap_pockets();
        }

        if (body_style_enabled) {
            body_exterior_style_cutouts();
        }
    }

    if (show_battery_reference) {
        color("#d9d2c4", 0.55)
            battery_reference();
    }

    if (show_ina219_reference) {
        ina219_reference();
    }

    if (show_tp4056_reference) {
        tp4056_reference();
    }
}

module top_half() {
    difference() {
        union() {
            translate([outer_len / 2, outer_wid / 2, 0])
                rounded_box(outer_len, outer_wid, top_thickness, corner_r);

            difference() {
                translate([outer_len / 2, outer_wid / 2, top_thickness])
                    rounded_box(lid_skirt_outer_len, lid_skirt_outer_wid, lid_overlap_height, max(corner_r - lid_recess_wall - fit_clearance, 0.5));

                translate([outer_len / 2, outer_wid / 2, top_thickness - 0.1])
                    rounded_box(lid_skirt_inner_len, lid_skirt_inner_wid, lid_overlap_height + 0.2, max(corner_r - wall - lid_wall, 0.5));
            }

            if (display_mount_enabled) {
                display_pins();
            }

            if (lid_snap_enabled) {
                lid_snap_bumps();
            }
        }

        if (screw_enabled) {
            screw_positions()
                translate([0, 0, -0.1])
                    cylinder(d = screw_clearance_d, h = top_outer_h + 0.2, center = false);
        }

        if (display_window_enabled) {
            display_window_cutout();
        }

        if (display_flex_relief_enabled) {
            display_flex_relief_cutout();
        }

        if (left_lid_window_enabled) {
            left_lid_window_cutout();
        }

        if (lid_style_enabled) {
            lid_exterior_style_cutouts();
        }

    }
}

module assembled_reference() {
    color("#2f6f9f")
        bottom_half();

    translate([0, 0, bottom_outer_h - lid_overlap_height])
        color("#c9d5df")
            top_half();
}

module preview_parts() {
    if (show_part == "bottom") {
        bottom_half();

        if (tp4056_clamp_enabled) {
            tp4056_clamp_part();
        }

        if (show_lid_in_bottom_scene) {
            translate([0, outer_wid + top_preview_gap, 0])
                color("#c9d5df")
                    top_half();
        }
    } else if (show_part == "top") {
        top_half();
    } else if (show_part == "tp4056_clamp") {
        if (tp4056_clamp_enabled) {
            tp4056_clamp_part();
        }
    } else {
        color("#2f6f9f")
            bottom_half();

        if (tp4056_clamp_enabled) {
            tp4056_clamp_part();
        }

        translate([outer_len + top_preview_gap, 0, 0])
            color("#c9d5df")
                top_half();
    }
}

preview_parts();
