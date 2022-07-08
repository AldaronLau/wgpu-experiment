struct VertexOutput {
    @builtin(position) member: vec4<f32>,
}

var<private> gl_Position: vec4<f32>;
var<private> gl_VertexIndex: u32;

fn main_1() {
    var local: array<vec2<f32>,3u> = array<vec2<f32>,3u>(vec2<f32>(0.0, 0.5), vec2<f32>(-0.5, -0.5), vec2<f32>(0.5, -0.5));

    let _e3 = gl_VertexIndex;
    let _e6 = local[_e3];
    gl_Position = vec4<f32>(_e6.x, _e6.y, 0.0, 1.0);
    return;
}

@vertex 
fn vs_main(@builtin(vertex_index) param: u32) -> VertexOutput {
    gl_VertexIndex = param;
    _ = array<vec2<f32>,3u>(vec2<f32>(0.0, 0.5), vec2<f32>(-(0.5), -(0.5)), vec2<f32>(0.5, -(0.5)));
    main_1();
    let _e18 = gl_Position;
    return VertexOutput(_e18);
}
