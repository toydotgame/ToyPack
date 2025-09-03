#version 150

layout(std140) uniform LightmapInfo {
	float AmbientLightFactor;
	float SkyFactor;
	float BlockFactor;
	int UseBrightLightmap;
	float NightVisionFactor;
	float DarknessScale;
	float DarkenWorldFactor;
	float BrightnessFactor;
	vec3 SkyLightColor;
} lightmapInfo;

in vec2 texCoord;

out vec4 fragColor;

float get_brightness(float level) {
	float curved_level = level / (4.0 - 3.0 * level);
	return mix(curved_level, 1.0, lightmapInfo.AmbientLightFactor);
}

vec3 notGamma(vec3 x) {
	vec3 nx = 1.0 - x;
	return 1.0 - nx * nx * nx * nx;
}

void main() {
	/* BEGIN TOYPACK CODE */
	/*
	 * lightmapInfo.BlockFactor is the subtle flicker applied to block light
	 * since Beta 1.8-pre1. From some very basic testing, it seems to flicker
	 * at and around 1.5f, so to remove it I just replace said variable with
	 * the literal 1.5:
	 */
	float block_brightness = 1.5*get_brightness(floor(16*texCoord.x)/15);
	/* END TOYPACK CODE */
	float sky_brightness = get_brightness(floor(texCoord.y * 16) / 15) * lightmapInfo.SkyFactor;
	
	/* BEGIN TOYPACK CODE */
	/*
	 * Alpha used a grayscale non-linear function for light levels where
	 * block light 15 → 1, bl 14 → 80% of 1, bl 13 → 80% of bl 14, etc. This
	 * can be expressed as:
	 *     f(x) = 0.8^(15-x)
	 * (Where x is the block light from 0–15 inclusive) Note how:
	 *    f(15) = 0.8^(15-15) = 0.8^0 = 1
	 * and
	 *    f(14) = 0.8^(15-14) = 0.8^1 = 80%
	 * As described above!
	 * 
	 * Or given that `block_brightness` is a 0–1 float value we get in this
	 * shader, we can do:
	 *     g(x) = 0.8^(15-15x)
	 * To compensate.
	 * 
	 * pow() isn't really great to use in the rendering pipleline, but to be
	 * completely fair the Vanilla original used three seperate calculations
	 * to create cubic functions for the R, G, and B channels uniquely, so one
	 * expensive pow() for all there isn't _too bad_… (Coping)
	 */
	float bl = pow(0.8, 15-15*block_brightness);
	vec3 color = vec3(bl, bl, bl); // Map the block light's luminosity value to R/G/B
	/* END TOYPACK CODE */

	/* BEGIN TOYPACK CODE */
	/*
	 * Honestly not quite sure what this one does. It applies a non-sky-tinted
	 * pale green lerp to whatever the block light colour is, if
	 * UseBrightLightmap is 0.
	 * If not, then it mixes in the sky colour (amplified according to the sky
	 * brightness), and adds some "darkness" too. (???)
	 */
	/* END TOYPACK CODE */
	if (lightmapInfo.UseBrightLightmap != 0) {
		color = mix(color, vec3(0.99, 1.12, 1.0), 0.25);
		color = clamp(color, 0.0, 1.0);
	} else {
		/* BEGIN TOYPACK CODE */
		/*
		 * Regardless, I wanna mess with the SkyLightColor to make the skylight
		 * monochromatic.
		 * We take a monchromatic mean of the sky colour's RGB to get a luminosity
		 * value. `sky_brightness` varies and determines how much of this light
		 * colour we should add.
		 * In the base game, it's:
		 *     sky_light = sky_colour*sky_brightness
		 * I want to add a multiplier to lower the minimum light level, without
		 * affecting the higher ones, ergo the above is a linear relation of
		 * the form:
		 *     f(l) = Cl
		 * (Where l is the light level (0–1), and C is the aforementioned luminosity)
		 * Ergo, with a turning point at (1,C) (i.e. the 100% brightness pure sky
		 * colour), that would be:
		 *     g(l) = C(l-1)+C
		 * Simply inserting some multiplier m into the mix:
		 *     h(l,m) = C(2-m)(l-1)+C
		 * And that does it! Note m should be 0–1, and that the constant 2 makes
		 * the multiplier affect the gradient of g(l) positively, rather than
		 * not at all (1), or negatively (0).
		 *
		 * sky_brightness_multiplier is REALLY mean, values ≥0.9 are the only
		 * practically useful ones, as anything less creates insane shadows.
		 * Anything less than 1 breaks fullbright/night vision stuff, so I'm
		 * actually going to leave this mostly commented out.
		 */
		//const float sky_brightness_multiplier = 0.95;
		float sky_color_mean = ( // I don't think there's a pretty way to do this
			 lightmapInfo.SkyLightColor.r
			+lightmapInfo.SkyLightColor.g
			+lightmapInfo.SkyLightColor.b
		)/3;
		//float sl = sky_color_mean*(2-sky_brightness_multiplier)*(sky_brightness-1)+sky_color_mean;
		//color += vec3(sl, sl, sl);

		color += vec3(sky_color_mean, sky_color_mean, sky_color_mean)*sky_brightness; // Here because above multiplier code is commented out

		// Commenting out fixes MC-225088. Why did 21w18a randomly decide to make sky light less?:
		//color = mix(color, vec3(0.75), 0.04);
		/* END TOYPACK CODE */
		
		/* BEGIN TOYPACK CODE */
		/*
		 * darkened_color is just color and a bit of a reddish-grey tint.
		 * DarkenWorldFactor is used to determine how much of said colour to
		 * apply. It is only used in the Ender Dragon fight
		 */
		/* END TOYPACK CODE */
		vec3 darkened_color = color * vec3(0.7, 0.6, 0.6);
		color = mix(color, darkened_color, lightmapInfo.DarkenWorldFactor);
	}

	if (lightmapInfo.NightVisionFactor > 0.0) {
		// scale up uniformly until 1.0 is hit by one of the colors
		float max_component = max(color.r, max(color.g, color.b));
		if (max_component < 1.0) {
			vec3 bright_color = color / max_component;
			color = mix(color, bright_color, lightmapInfo.NightVisionFactor);
		}
	}

	if (lightmapInfo.UseBrightLightmap == 0) {
		color = clamp(color - vec3(lightmapInfo.DarknessScale), 0.0, 1.0);
	}

	vec3 notGamma = notGamma(color);
	color = mix(color, notGamma, lightmapInfo.BrightnessFactor);
	/* BEGIN TOYPACK CODE */
	//color = mix(color, vec3(0.75), 0.04); // MC-225088 fix as above
	/* END TOYPACK CODE */
	color = clamp(color, 0.0, 1.0);

	fragColor = vec4(color, 1.0);
}

