// EdgeFilter

uniform vec2  uValue;
uniform vec4  uColor;
uniform vec2  uOffset;

vec4 getPixel(vec2 uv, float x, float y)
{
	return texture(sTD2DInputs[0], vUV.st + vec2(x, y));
}

out vec4 fragColor;
void main()
{
	vec4 sum = vec4(0.0);
	vec2 uv  = vUV.st;

	sum += abs(getPixel(uv, 0, uOffset.y) - getPixel(uv, 0, -uOffset.y));
	sum += abs(getPixel(uv, uOffset.x, 0) - getPixel(uv, -uOffset.x, 0));
	sum *= 0.5;

	vec4 col = texture(sTD2DInputs[0], uv);
	float len = length(sum);
	col.rgb = mix(mix(vec3(0.0), col.rgb, uValue.y), uColor.rgb, len * uValue.x);
	//col.r += len * uValue * uColor.r;
	//col.g += len * uValue * uColor.g;
	//col.b += len * uValue * uColor.b;

    fragColor = TDOutputSwizzle(col);
}

