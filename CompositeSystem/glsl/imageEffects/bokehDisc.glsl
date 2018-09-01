// BokehDisc

// original code
// https://www.shadertoy.com/view/4d2Xzw

#define GOLDEN_ANGLE 2.39996323
#define ITERATIONS   84


uniform float uR;
uniform float uA;
uniform float uRate;
uniform vec4  uScreenParams;

uniform float uValue;

const mat2 rot = mat2
(
	cos(GOLDEN_ANGLE), sin(GOLDEN_ANGLE),
	-sin(GOLDEN_ANGLE), cos(GOLDEN_ANGLE)
);

vec3 bokeh(sampler2D tex, vec2 uv, float radius, float amt)
	{
		vec3 acc = (vec3)0.0;
		vec3 div = (vec3)0.0;
		vec2 pixel = uScreenParams.zw;
		float  r = 1.0;
		vec2 vangle = vec2(0.0, radius);
		float amount = amt;
		amount += radius;

		for (int j = 0; j < ITERATIONS; j++)
		{
			r += 1.0 / r;
			vangle = rot * vangle;

			vec3 col = texture(sTD2DInputs[0], uv + pixel * (r - 1.0) * vangle).xyz;

			col = col * col * 1.5;
			vec3 bokeh = pow(col, (vec3)9.0) * amount + 0.4;
			acc += col * bokeh;
			div += bokeh;
		}
		return acc / div;
	}


out vec4 fragColor;
void main()
{
    vec4 color = texture(sTD2DInputs[0], vUV.st);
    
    vec3 bk = bokeh(sTD2DInputs[0], vUV.st, uR, uA);
    color = mix(color, vec4(bk, 1.0),  uValue * length(bk));

    fragColor = TDOutputSwizzle(color);
}
