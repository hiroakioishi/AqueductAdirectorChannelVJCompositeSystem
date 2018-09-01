
// Example Pixel Shader

// uniform float exampleUniform;
uniform vec4 uFader;

out vec4 fragColor;
void main()
{
    vec4 tex0 = texture(sTD2DInputs[0], vUV.st);
    vec4 tex1 = texture(sTD2DInputs[1], vUV.st);
    vec4 tex2 = texture(sTD2DInputs[2], vUV.st);

    vec4 color = vec4(0.0, 0.0, 0.0, 1.0);
    color.rgb = tex0.rgb * uFader.x + tex1.rgb * uFader.y + tex2.rgb * uFader.z;
    color.rgb = clamp(color.rgb, vec3(0.0), vec3(1.0));

    color.rgb *= vec3(uFader.w);
    
    fragColor = TDOutputSwizzle(color);
}
