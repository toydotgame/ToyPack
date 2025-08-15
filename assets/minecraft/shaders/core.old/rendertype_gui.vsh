/*
 * AUTHOR: toydotgame, SuperAnt_, Leobaker202
 * CREATED ON: 2024-04-21
 * Mostly my code, but based on a template taken from the original
 * rendertype_gui.vsh from https://modrinth.com/resourcepack/no-dark-inventory-overlay
 * LCE tooltip code from https://modrinth.com/resourcepack/legacy-console-edition-visuals
 * rendertype_gui.fsh completely Leobaker202's work.
 */

#version 150

in vec3 Position;
in vec4 Color;
uniform mat4 ModelViewMat;
uniform mat4 ProjMat;

out vec4 vertexColor;
out vec4 Coords;
out vec2 position;
flat out vec2 flatCorner;
out vec2 Pos1;
out vec2 Pos2;

void main() {
	gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	vertexColor = Color;
	
	// Infdev blue GUI overlay
	if(vertexColor.r == 0.0627451 && vertexColor.a >= 0.7 && vertexColor.a < 0.9) {
		vertexColor.r = 0.27058823529411763;
		vertexColor.g = 0.27058823529411763;
		vertexColor.b = 0.38823529411764707;
		vertexColor.a = 0.627;
		vertexColor.rgb *= -gl_Position.y;
	}
	
	// Legacy console tooltip
	// See also rendertype_gui.fsh
	Coords = vec4(-1);
	position = vec2(-1);
	Pos1 = vec2(-1);
	Pos2 = vec2(-1);
	flatCorner = vec2(-1);
	if(Color.r != 0 && Color.g == 0 && Color.b != 0 && ProjMat[3][0] == -1) {		
		int id = gl_VertexID / 4;
		int vertID = (gl_VertexID) % 4;
		const vec2[4] corners = vec2[4](vec2(0, 0), vec2(0, 1), vec2(1, 1), vec2(1, 0));
		vec2 ScrSize = 2 / vec2(ProjMat[0][0], -ProjMat[1][1]);
		vec3 Pos = Position - vec3(corners[((gl_VertexID) ) % 4] * 2 - 1, 0);
		Pos1 = Pos2 = vec2(0);
		if(vertID == 0) Pos1 = Pos.xy;
		if(vertID == 2) Pos2 = Pos.xy;
		Coords.xy = ScrSize;
		Coords.zw = flatCorner = corners[vertID];
		position = Pos.xy;
		if(id != 2)
			Pos.xy = vec2(0);
		gl_Position = ProjMat * ModelViewMat * vec4(Pos, 1);
	}
}

