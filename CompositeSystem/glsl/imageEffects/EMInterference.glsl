// EMInterference

// original code
// https://www.shadertoy.com/view/lsXSWl

uniform float uValue;
uniform float uSpeed;
uniform float uOffset;

uniform vec4 uTime;

float rng2(vec2 seed)
{
    return fract(sin(dot(seed * floor(uTime.w * uSpeed), vec2(127.1, 311.7))) * 43758.5453123);
} 

float rng(float seed)
{
    return rng2 (vec2 (seed, 1.0));
}

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;
	vec2 blockS = floor(uv * vec2(24.0, 9.0));
	vec2 blockL = floor(uv * vec2( 8.0, 4.0));

	float r = rng2(uv);
	vec3  noise = (vec3(r, 1.0 - r, r / 2.0 + 0.5) * 1.0 - 2.0) * 0.08;

	float lineNoise = pow(rng2(blockS), 8.0) * pow(rng2(blockL), 3.0) - pow(rng(7.2341), 17.0) * 2.0;
	    
	vec4 col1 = texture(sTD2DInputs[0], vUV.st);
	vec4 col2 = texture(sTD2DInputs[0], uv + vec2(lineNoise * 0.05 * rng( 5.0), 0) * uOffset);
	vec4 col3 = texture(sTD2DInputs[0], uv - vec2(lineNoise * 0.05 * rng(31.0), 0) * uOffset);
	    
	vec4 color = mix(col1, vec4(vec3(col1.x, col2.y, col3.z) + noise, 1.0), uValue);

    fragColor = TDOutputSwizzle(color);
}
