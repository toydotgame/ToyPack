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

void main() {
	gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);
	/* BEGIN TOYPACK CODE */
	// The specic indicies seem to change by MC version. I yoinked these
	// from: https://modrinth.com/resourcepack/gilded-neon-ui/versions
	bool inGUI = ProjMat[2][3] == 0; // Effectively const but not bc old MC OpenGL
	/* END TOYPACK CODE */

	sphericalVertexDistance = fog_spherical_distance(Position);
	cylindricalVertexDistance = fog_cylindrical_distance(Position);
	vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
	/* BEGIN TOYPACK CODE */
	// texelFetch() yields texture RGBA
	// Color is the game's RGBA values applied to the texture. I truly
	// don't know why we do vertexColor = Color*texelFetch() when
	// vertexColor = Color does the same damn thing

	const float EPSILON = 0.0025;
	const float GRAY = 64/255+0.25; // Literally explodes if you try to simplify it
	if(inGUI && Color.r >= GRAY-EPSILON && Color.r <= GRAY+EPSILON)
		vertexColor.rgb = vec3(1.0, 1.0, 1.0); // Make inv. grey text white
	/* END TOYPACK CODE */
	texCoord0 = UV0;
}

// vim: syntax=glsl:
