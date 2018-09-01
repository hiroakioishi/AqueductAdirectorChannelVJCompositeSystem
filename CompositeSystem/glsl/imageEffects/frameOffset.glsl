// FrameOffset

uniform vec4  uScreenParams;
uniform vec4  uTime;

uniform vec4  uOffset;

out vec4 fragColor;
void main()
{
	float blend = mod(uOffset.z, 1.0);

	vec2 uv = mod(vUV.st + uOffset.xy, 1.0);

	vec2 uv0 = uv.xy * (1.0 - blend) + vec2(0.5, 0.5) * blend;
	vec2 uv1 = uv.xy * (2.0 - blend) - vec2(0.5, 0.5) * (1.0 - blend);

	vec4 color0 = texture(sTD2DInputs[0], uv0);
	vec4 color1 = texture(sTD2DInputs[0], uv1);

	vec4 color = mix(color0, color1, blend);

    //vec4 color = texture(sTD2DInputs[0], uv);
    
    fragColor = TDOutputSwizzle(color);
}
