// Noise Slice Distortion

uniform float uOffset;
uniform float uFrequency;
uniform float uRate;

uniform vec4  uTime;
uniform vec4  uScreenParams;
uniform vec4  uAspectRatio;

float rand(vec2 co)
{
    return fract(sin(dot(co.xy, vec2(12.9898,78.233))) * 43758.5453);
}

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;
	vec2 duv = vec2(TDSimplexNoise(vec2(uv.y + 10.0 * sin(uTime.w * 0.05), uTime.w * 0.5)), 0.0);
	
	float nv = TDSimplexNoise(vec2(uv.y * uFrequency, uTime.w * 10.0));
	
	float ns = (1.0 - smoothstep(0.0, uRate, abs(duv.x)));
	duv.x = duv.x > -uRate && duv.x < uRate ? nv * uOffset * 1.0 : 0.0;

    vec4 color = texture(sTD2DInputs[0], vUV.st + duv);

    fragColor = TDOutputSwizzle(color);
}
