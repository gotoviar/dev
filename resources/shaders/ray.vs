#ifdef GL_ES
    precision highp int;
    precision highp float;
#endif 
layout(location = 0) in vec3 aPos;

out vec3 FragPos;

uniform mat4 uModel;
uniform mat4 uProjView;

void main() {
    FragPos = vec3(uModel * vec4(aPos, 1.0));

    gl_Position = uProjView * vec4(FragPos, 1.0);
}
