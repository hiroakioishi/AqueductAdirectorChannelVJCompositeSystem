// HSVColorModifier

uniform vec2 uHueScaleOffset;
uniform vec2 uSaturationScaleOffset;
uniform vec2 uValueScaleOffset;

vec3 rgb2hsv(vec3 c)
{
	vec4 K = vec4(0.0, -0.3333333, 0.6666666, -1.0);
	vec4 p = mix(vec4(c.b, c.g, K.w, K.z), vec4(c.g, c.b, K.x, K.y), step(c.b, c.g));
	vec4 q = mix(vec4(p.x, p.y, p.w, c.r), vec4(c.r, p.y, p.z, p.x), step(p.x, c.r));

	float d = q.x - min(q.w, q.y);
	float e = 1.0e-10;
	return vec3(abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
}

vec3 hsv2rgb(vec3 c)
{
	vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
	vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
	return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

out vec4 fragColor;
void main()
{
	vec4 col    = texture(sTD2DInputs[0], vUV.st);
	vec3 hsvCol = rgb2hsv(col.rgb);

	hsvCol.x = hsvCol.x * uHueScaleOffset.x        + uHueScaleOffset.y; 
	hsvCol.y = hsvCol.y * uSaturationScaleOffset.x + uSaturationScaleOffset.y;
	hsvCol.z = hsvCol.z * uValueScaleOffset.x      + uValueScaleOffset.y;

	col.rgb = hsv2rgb(hsvCol);

    fragColor = TDOutputSwizzle(col);
}
