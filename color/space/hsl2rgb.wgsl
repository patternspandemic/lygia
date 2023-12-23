#include "hue2rgb.wgsl"

fn hsl2rgb(hsl: vec3f) -> vec3f {
    let rgb = hue2rgb(hsl.x);
    let C = (1.0 - abs(2.0 * hsl.z - 1.0)) * hsl.y;
    return (rgb - 0.5) * C + hsl.z;
}