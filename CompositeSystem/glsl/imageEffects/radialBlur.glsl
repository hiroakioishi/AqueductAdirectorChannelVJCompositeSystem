// radialBlur

#define ITERATIONS 32
#define INV_ITERATIONS 0.03125

uniform float uValue;
uniform vec4 uTime;
uniform vec4 uScreenParams;


out vec4 fragColor;
void main()
{
	vec2 uv  = vUV.st;
	vec2 p   = uv.xy - vec2(0.5, 0.5);
	vec3 col = vec3(0.0);
	vec4 tex = texture(sTD2DInputs[0], vUV.st);

	for (int i = 0; i < ITERATIONS; i++)
	{
		float d   = (15.0 + 5.0 * INV_ITERATIONS * float(i) * uValue);
		vec2  muv = p * ( d / 15.0);

		col += 0.1 * (1.0 - INV_ITERATIONS * i) * texture(sTD2DInputs[0], fract(muv + vec2(0.5, 0.5))).rgb;
	}
	col = min(col * col * 1.0, 1.0);

	vec4 color = vec4(col.rgb, 1.0);

    fragColor = TDOutputSwizzle(color);
}
