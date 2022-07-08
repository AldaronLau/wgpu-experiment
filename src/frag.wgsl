struct FragmentOutput {
    @location(0) f_color: vec4<f32>,
}

@fragment 
fn fs_main() -> FragmentOutput {
    return FragmentOutput(vec4<f32>(0.3, 0.2, 0.1, 1.0));
}
