#version 300 es

in vec3 position;
in vec2 tex;

out vec2 fragTex;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main() {
	gl_Position = projection * view * model * vec4(position, 1.0);
	fragTex = tex;
}