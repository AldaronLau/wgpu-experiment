struct FragmentOutput {
    @location(0) f_color: vec4<f32>,
}

var<private> f_color: vec4<f32>;

fn main_1() {
    f_color = vec4<f32>(0.30000001192092896, 0.20000000298023224, 0.10000000149011612, 1.0);
    return;
}

@fragment 
fn fs_main() -> FragmentOutput {
    main_1();
    let _e3 = f_color;
    return FragmentOutput(_e3);
}
