// CrappyEdgeDetection

// original code
// https://www.shadertoy.com/view/Xssfzf

#define stepH 0.2
#define stepV 0.2

uniform float uValue;
uniform float uInverse;
uniform vec2  uStep;

uniform vec4 uScreenParams;

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;

	vec4 curColor = texture(sTD2DInputs[0], vUV.st);

	// get samples around pixel
	vec4 colors[8];
	float stepX = uStep.x * uScreenParams.z;
	float stepY = uStep.y * uScreenParams.w;

	colors[0] = texture(sTD2DInputs[0], uv + vec2(-stepX,  stepY));
	colors[1] = texture(sTD2DInputs[0], uv + vec2(     0,  stepY));
	colors[2] = texture(sTD2DInputs[0], uv + vec2( stepX,  stepY));
	colors[3] = texture(sTD2DInputs[0], uv + vec2(-stepX,  0    ));
	colors[4] = texture(sTD2DInputs[0], uv + vec2( stepX,  0    ));
	colors[5] = texture(sTD2DInputs[0], uv + vec2(-stepX, -stepY));
	colors[6] = texture(sTD2DInputs[0], uv + vec2(     0, -stepY));
	colors[7] = texture(sTD2DInputs[0], uv + vec2( stepX, -stepY));

	// sum color distance from neighbors
	float colorDistance = 0.0;
	for (int i = 0; i < 8; i++)
	{
		colorDistance += distance(curColor, colors[i]);
	}

	// tweak lines strength
	colorDistance *= 6.0;
	colorDistance = smoothstep(0.02, 0.98, colorDistance);

	// draw
	vec4 color =  mix(
		curColor,
		mix(
			vec4((vec3)colorDistance, 1.0),
			vec4(1.0 - colorDistance, 1.0 - colorDistance, 1.0 - colorDistance, 1.0),
			uInverse), 
		uValue
	);

    fragColor = TDOutputSwizzle(color);
}
