#version 150

/*
 * AUTHOR: Mojang, toydotgame, SuperAnt_
 * CREATED: 2025-08-15
 * Mojang's gui.vsh code, with ToyPack additions added for Infdev-like GUI
 * dimming. Originated as the rendertype_gui.vsh (pack format 22 era)
 * (created 2024-04-21). For that one (and thus the very origins of the
 * GUI conditionals here) can be attributed to SuperAnt_, see:
 * 	https://modrinth.com/resourcepack/no-dark-inventory-overlay
 */

// Can't moj_import in things used during startup, when resource packs don't exist.
// This is a copy of dynamicimports.glsl and projection.glsl
layout(std140) uniform DynamicTransforms {
	mat4 ModelViewMat;
	vec4 ColorModulator;
	vec3 ModelOffset;
	mat4 TextureMat;
	float LineWidth;
};
layout(std140) uniform Projection {
	mat4 ProjMat;
};

in vec3 Position;
in vec4 Color;

out vec4 vertexColor;

void main() {
	gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

	vertexColor = Color;
	
	/* BEGIN TOYPACK CODE */
	if(vertexColor.r == 0.0627451 // Dim is grayscale, just check one
		/*
		 * Mojang applies an alpha gradient (median alpha ~0xC0/0.7529412f)
		 * going opaque→transparent-er down the image, __during the frag
		 * shader__ (step after this file). I WASTED LIKE 5 HOURS OF MY LIFE
		 * TRYING TO FIGHT THIS. :((((( Simple solution: 0.7≤a≤0.9 is good
		 * enough; don't bother being exact
		 */
		&& vertexColor.a >= 0.7 && vertexColor.a <= 0.9) {
		// Remap [-1,1] bottom-to-top to [0,1] top-to-bottom:
		float RASTER_HEIGHT_NORMALIZED = -0.5*gl_Position.y+0.5;
		vec3 INFDEV_BLUE = vec3( // Approx. #454563
			0.27058823529411763,
			0.27058823529411763,
			0.38823529411764707
		)*RASTER_HEIGHT_NORMALIZED; // RGB*pixel Y yields black→blue going down

		vertexColor = vec4(INFDEV_BLUE, 0.627); // Arbitrary opacity
	}
	/* END TOYPACK CODE */
}

// vim: syntax=glsl:
