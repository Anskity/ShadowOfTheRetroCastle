varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);
    float gray = dot(base_color.rgb, vec3(.33, .59, .11));
    gl_FragColor = v_vColour* vec4(vec3(gray), base_color.a);
}
