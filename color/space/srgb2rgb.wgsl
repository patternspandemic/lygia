fn srgb2rgb_mono(channel: f32) -> f32 {
    if (channel < 0.04045)
        return channel * 0.0773993808; // 1.0 / 12.92;
    else
        return pow((channel + SRGB_ALPHA) / (1.0 + SRGB_ALPHA), 2.4);
}

fn srgb2rgb(srgb:vec3f) -> vec3f {
    return vec3f(
            srgb2rgb_mono(srgb.r + 0.00000001),
            srgb2rgb_mono(srgb.g + 0.00000001),
            srgb2rgb_mono(srgb.b + 0.00000001)
        );
}
