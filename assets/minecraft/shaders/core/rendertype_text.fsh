#version 150

/*
 * AUTHOR: toydotgame
 * CREATED: 2025-08-15
 * 1.21.8+ (ToyPack 1.15+) successor to the old rendertype_text shaders
 */

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>

uniform sampler2D Sampler0;

in float sphericalVertexDistance;
in float cylindricalVertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

out vec4 fragColor;

void main() {
	vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
	if (color.a < 0.1) {
		discard;
	}
	/* BEGIN TOYPACK CODE */
	// If we catch some grey text, force it white:
	if(color.r > 0.2479 && color.r < 0.2481) {
		color.rgb = vec3(1.0, 1.0, 1.0);
	}
	/* END TOYPACK CODE */
	fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
}

// vim: syntax=glsl:
