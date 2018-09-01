// Inverse

uniform float uValue;

out vec4 fragColor;
void main()
{
    vec4 color = texture(sTD2DInputs[0], vUV.st);
    color.rgb = mix(color.rgb, 1.0 - color.rgb, uValue);
    fragColor = TDOutputSwizzle(color);
}
