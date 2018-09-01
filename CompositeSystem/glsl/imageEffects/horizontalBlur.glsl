// Horizontal Blur

uniform float uValue;

//uniform TDTexInfo uTD2DInfos[TD_NUM_2D_INPUTS];

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;
	vec4 sum = vec4(0.0);

	vec2 invRes = uTD2DInfos[0].res.xy;

	sum += texture(sTD2DInputs[0], uv + vec2(-4.0 * uValue, 0.0) * invRes) * 0.05;
	sum += texture(sTD2DInputs[0], uv + vec2(-3.0 * uValue, 0.0) * invRes) * 0.09;
	sum += texture(sTD2DInputs[0], uv + vec2(-2.0 * uValue, 0.0) * invRes) * 0.12;
	sum += texture(sTD2DInputs[0], uv + vec2(      -uValue, 0.0) * invRes) * 0.15;
	sum += texture(sTD2DInputs[0], uv + vec2(          0.0, 0.0) * invRes) * 0.16;
	sum += texture(sTD2DInputs[0], uv + vec2(       uValue, 0.0) * invRes) * 0.15;
	sum += texture(sTD2DInputs[0], uv + vec2( 2.0 * uValue, 0.0) * invRes) * 0.12;
	sum += texture(sTD2DInputs[0], uv + vec2( 3.0 * uValue, 0.0) * invRes) * 0.09;
	sum += texture(sTD2DInputs[0], uv + vec2( 4.0 * uValue, 0.0) * invRes) * 0.05;

    fragColor = TDOutputSwizzle(sum);
}
