include <_defaults.scad>

module m_rail_1u() {
    difference() {
        cube([
            h2sr_rail_depth_mm,
            ru_rail_width_mm,
            ru_rail_height_mm]);
        m_rail_m5_bottomThread();
        m_rail_m5_centerThread();
        m_rail_m5_topThread();
    }

    module m_rail_m5_bottomThread() {
        translate([
            0,
            ru_rail_width_mm / 2,
            ru_rail_thread_endDistance_mm])
        m_rail_m5_thread();
    }

    module m_rail_m5_centerThread() {
        translate([
            0,
            ru_rail_width_mm / 2,
            ru_rail_height_mm / 2])
        m_rail_m5_thread();
    }

    module m_rail_m5_topThread() {
        translate([
            0,
            ru_rail_width_mm / 2,
            ru_rail_height_mm - ru_rail_thread_endDistance_mm])
        m_rail_m5_thread();
    }

    module m_rail_m5_thread() {
        union() {
            translate([-0.1, 0, 0])
            rotate([0, 90, 0])
            cylinder(
                h = h2sr_m5nut_height_mm + 0.1,
                r = f_h2sr_m5nut_housing_radius_mm(),
                $fn = 6);
            translate([h2sr_m5nut_height_mm - 0.1, 0, 0])
            rotate([0, 90, 0])
            cylinder(
                h = (h2sr_rail_depth_mm - h2sr_m5nut_height_mm) + 0.2,
                r = f_h2sr_m5bolt_housing_radius_mm(),
                $fn = 50);
        }
    }
}
