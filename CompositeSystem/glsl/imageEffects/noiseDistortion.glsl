// Noise Distortion

uniform float uAmplitude;
uniform float uFrequency;
uniform float uSpeed;
uniform vec4  uTime;
uniform vec4  uScreenParams;
uniform vec4  uAspectRatio;

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;

	vec2 duv = uAmplitude * vec2(
		TDSimplexNoise(vec3(uAspectRatio.xz * uFrequency * uv,                  uTime.w * uSpeed)),
		TDSimplexNoise(vec3(uAspectRatio.xz * uFrequency * uv + vec2(0.2, 0.2), uTime.w * uSpeed))
	);

    vec4 color = texture(sTD2DInputs[0], vUV.st + duv);

    fragColor = TDOutputSwizzle(color);
}
