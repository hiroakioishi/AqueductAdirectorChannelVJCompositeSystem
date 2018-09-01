// FrameSlide

// original code
// https://www.shadertoy.com/view/4syGDR

uniform vec4  uScreenParams;
uniform vec4  uTime;

uniform vec2  uDiv;

out vec4 fragColor;
void main()
{
	vec2 uv = vUV.st;

	float xdiv = uDiv.x;
	float ydiv = uDiv.y;

	vec2 uv2 = vec2(uv.x-(1.0/xdiv), uv.y); //Take the picture from one step left
	    if (uv.x < (1.0/xdiv))
		{ //At left
	        uv2 = vec2(uv.x + ((xdiv-1.0)/xdiv), uv.y-(1.0/ydiv)); //Take the right to left and one step up
	    }
	    vec3 outc = (uv.x < (1.0/xdiv) && uv.y < (1.0/ydiv)) ? texture(sTD2DInputs[0], fract(uv * vec2(xdiv, ydiv))).rgb : texture(sTD2DInputs[1], uv2).rgb;
	
    vec4 color = vec4(outc, 1.0);
    
    fragColor = TDOutputSwizzle(color);
}
