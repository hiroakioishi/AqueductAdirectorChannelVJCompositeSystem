// Anaglyph

uniform float uValue;
uniform float uOffset;

out vec4 fragColor;
void main()
{
	vec4  c = texture(sTD2DInputs[0], vUV.st);
    float r = texture(sTD2DInputs[0], vUV.st - vec2(uOffset, 0)).r;
    float g = texture(sTD2DInputs[0], vUV.st + vec2(uOffset, 0)).g;
    float b = texture(sTD2DInputs[0], vUV.st).b;
    vec4  color = mix(c, vec4(r, g, b, 1.0), uValue);
    fragColor = TDOutputSwizzle(color);
}
