#ifdef GL_ES
    precision highp int;
    precision highp float;
#endif
out vec4 FragColor;

in vec3 FragPos;

uniform vec3 uRayOrigin;

const vec3 objectColor = vec3(0.0, 1.0, 1.0);

void main() 
{
    float max_len_2 = 1.f;
    float factor = smoothstep(max_len_2, 0.0, length(uRayOrigin - FragPos))/2.0;
    
    FragColor = vec4(objectColor, factor);
}
