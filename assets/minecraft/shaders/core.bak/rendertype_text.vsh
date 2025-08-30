#version 150

/*
 * AUTHOR: toydotgame
 * CREATED: 2025-08-15
 * 1.21.8+ (ToyPack 1.15+) successor to the old rendertype_text shaders.
 * Provides the value `inGUI` for use in the fragment shader later
 */

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
/* BEGIN TOYPACK CODE */
out float inGUI;
/* END TOYPACK CODE */

void main() {
	gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	/* BEGIN TOYPACK CODE */
	// The specic indicies seem to change by MC version. I yoinked these
	// from: https://modrinth.com/resourcepack/gilded-neon-ui/versions
	inGUI = (ProjMat[2][3]==0) ? 1.0:0.0;
	/* END TOYPACK CODE */

	sphericalVertexDistance = fog_spherical_distance(Position);
	cylindricalVertexDistance = fog_cylindrical_distance(Position);
	vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
	texCoord0 = UV0;
}

// vim: syntax=glsl:
