// Pixelate

uniform float uCellSize;
uniform vec4  uScreenParams;
uniform vec4  uTime;

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;
	vec2 divs = vec2(uScreenParams.x / uCellSize, uScreenParams.y / uCellSize);
	uv = floor(uv * divs) / divs;

    vec4 color = texture(sTD2DInputs[0], uv);
    
    //color.rgb = mix(color.rgb, 1.0 - color.rgb, uValue);
    
    fragColor = TDOutputSwizzle(color);
}
