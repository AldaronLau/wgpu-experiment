struct VertexOutput {
    @builtin(position) member: vec4<f32>,
}

@vertex 
fn vs_main(@builtin(vertex_index) param: u32) -> VertexOutput {
    var tri: array<vec2<f32>,3u> = array<vec2<f32>,3u>(
        vec2<f32>(0.0, 0.5),
        vec2<f32>(-0.5, -0.5),
        vec2<f32>(0.5, -0.5)
    );

    return VertexOutput(vec4<f32>(tri[param], 0.0, 1.0));
}

struct FragmentOutput {
    @location(0) f_color: vec4<f32>,
}

@fragment 
fn fs_main() -> FragmentOutput {
    return FragmentOutput(vec4<f32>(0.3, 0.2, 0.1, 1.0));
}
