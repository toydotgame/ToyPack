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
	// IN-GAME GUI DIM
	if(vertexColor.r == 0.0627451 // Dim is grayscale, just check one
		/*
		 * Mojang applies an alpha gradient (median alpha ~0xC0/0.7529412f)
		 * going opaque→transparent-er down the image, __during the frag
		 * shader__ (step after this file). I WASTED LIKE 5 HOURS OF MY LIFE
		 * TRYING TO FIGHT THIS. :((((( Simple solution: 0.7≤a≤0.9 is good
		 * enough; don't bother being exact. I actually use a≤0.9 only
		 * because the Bed fade in is hard to fight so I just include all
		 */
		&& vertexColor.a <= 0.9) {
		// Remap [-1,1] bottom-to-top to [0,1] top-to-bottom:
		float RASTER_HEIGHT_NORMALIZED = -0.5*gl_Position.y+0.5;
		vec3 INFDEV_BLUE = vec3(69, 69, 99) // Approx. #454563
			/255*RASTER_HEIGHT_NORMALIZED;  // RGB*pixel Y yields black→blue going down

		vertexColor = vec4(INFDEV_BLUE, 0.627); // Arbitrary opacity
		return;
	}

	// MOJANG SPLASH DIM
	if(vertexColor.rgb == vec3(239, 50, 61)/255) { // #EF323D default
		const vec3 MOJANG_PURPLE = vec3(55, 51, 99)/255; // Mojang bg colour
		//vertexColor = vec4(MOJANG_PURPLE, 1.0);
		vertexColor.rgb = MOJANG_PURPLE;
		
		return;
	}
	
	/*
	 * The loading bar code below doesn't really work nice since it
	 * actually DOES turn out there's a lot of white, non-rendertype_text
	 * pixels in the GUIs (I literally didn't check the menus), so TODO
	 * is to check for a better way of determining if we're in the splash
	 * or not
	 */
	return;
	
	// LOADING BAR
	/*
	 * This literally overwrites all white to the Mojang Specifications
	 * purple, which SOUNDS stupid, BUT: gui.vsh handles rendering of
	 * the GUI dim, splash, chat, tab menu, subtitles, HUD info line, etc.
	 * Text is handled by the rendertype_text or whatever it's called
	 * nowadays. Therefore, it's pretty safe to assume the only pure white
	 * coloured object we will encounter by this point in execution is from
	 * the splash screen :)
	 */
	if(vertexColor.rgb == vec3(1.0, 1.0, 1.0)) {
		const vec3 MOJANG_LOGO_PURPLE = vec3(142, 132, 255)/255; // Mojang logo colour
		//vertexColor = vec4(MOJANG_LOGO_PURPLE, 1.0);
		vertexColor.rgb = MOJANG_LOGO_PURPLE;
	}
	/* END TOYPACK CODE */
}

// vim: syntax=glsl:
