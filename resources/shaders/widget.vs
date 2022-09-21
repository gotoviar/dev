#ifdef GL_ES
	precision highp float;
	precision highp int;
#endif

layout (location = 0) in vec3 aPos;
layout (location = 1) in vec2 aUV;

uniform mat4 uModel;
uniform mat4 uProjView;


out vec3 WorldPos;
out vec2 UV;


void main() 
{
    UV = aUV;

    WorldPos = vec3(uModel * vec4(aPos, 1.0));

    gl_Position =  uProjView * vec4(WorldPos, 1.0);
}
