/*
 * AUTHOR: toydotgame, SuperAnt_
 * CREATED ON: 2024-04-21
 * Mostly my code, but based on a template taken from the original
 * rendertype_gui.vsh from https://modrinth.com/resourcepack/no-dark-inventory-overlay
 */

#version 150

in vec3 Position;
in vec4 Color;
uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	vertexColor = Color;
	if(vertexColor.r == 0.0627451 && vertexColor.a >= 0.7 && vertexColor.a < 0.9) {
		vertexColor.r = 0.27058823529411763;
		vertexColor.g = 0.27058823529411763;
		vertexColor.b = 0.38823529411764707;
		vertexColor.a = 0.627;
		vertexColor.rgb *= -gl_Position.y;
	}
}

