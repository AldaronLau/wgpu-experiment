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
