ru_rail_width_mm = 18.875;
ru_rail_height_mm = 44.5;
ru_rail_thread_endDistance_mm = 6.35;
h2sr_rail_depth_mm = 15;
h2sr_m5bolt_housing_diameter_gain_mm = 0.1;
h2sr_m5bolt_housing_diameter_mm = 5;
h2sr_m5nut_height_mm = 4;
h2sr_m5nut_housing_diameter_gain_mm = 0.4;
h2sr_m5nut_housing_diameter_mm = 9;

function f_h2sr_m5bolt_housing_diameter_mm()
    = h2sr_m5bolt_housing_diameter_mm + h2sr_m5bolt_housing_diameter_gain_mm;
function f_h2sr_m5bolt_housing_radius_mm()
    = f_h2sr_m5bolt_housing_diameter_mm() / 2;
function f_h2sr_m5nut_housing_diameter_mm()
    = h2sr_m5nut_housing_diameter_mm + h2sr_m5nut_housing_diameter_gain_mm;
function f_h2sr_m5nut_housing_radius_mm()
    = f_h2sr_m5nut_housing_diameter_mm() / 2;
