void mainImage (out vec4 fragColor, in vec2 fragCoord)
{
    vec2 uv = fragCoord/iResolution.xy * 2.0 -1.0;

    float siri = abs(cos(sin(iTime - uv.y))) / length(uv.y) * 0.07 ;
    float s = length(uv.y) * .1 ;

    vec3 col1 = s * mix(vec3(0.9, 0.2, .9), vec3(0.4, 0.4, .5), cos(uv.x));

    vec3 col = col1 + siri * mix(vec3(0.4, 0.2, 0.9), vec3(0.4, 0.4, 0.9), abs(uv.x));

    fragColor =  vec4(col, 1.0);
}