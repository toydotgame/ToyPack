#version 150

/*
 * AUTHOR: Mojang, toydotgame
 * CREATED: 2025-09-04
 * Mojang's lightmap.fsh as of 1.21.8, with ToyPack modifications to achieve:
 * - Monochromatic block lighting (as an approximation of the mean of the
 *   Vanilla RGB curves rather than a purely linear relation)
 * - Monochromatic skylight colour
 * - Fix MC-225088 by just…not mixing a bit of light grey once or twice every
 *   frame, allowing dark to be more dark and bright to be more bright
 *     - Requires a manual re-implementation of minimum block light in the code
 *       where we apply lighting to non-fullbright/night vision renders, see below
 */

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
	// lightmapInfo.BlockFactor is the flicker to apply to block light sources.
	// It wavers around 1.5f; I don't want it, so we replace it with the literal:
	float bl = 1.5*get_brightness(floor(texCoord.x * 16)/15);
	/* END TOYPACK CODE */
	float sky_brightness = get_brightness(floor(texCoord.y * 16) / 15) * lightmapInfo.SkyFactor;
	
	/* BEGIN TOYPACK CODE */
	/*
	 * Vanilla uses the following three functions to determine the brightness
	 * of a block given light level from light sources `l` (0–1):
	 *     r(l) = l
	 *     g(l) = 0.36l² + 0.64l
	 *     b(l) = 0.6l³ + 0.4l
	 * 
	 * For reference, Minecraft Alpha 'till Beta 1.8 determined the value for
	 * all three as:
	 *     v₁(b) = 0.8^(15-b)
	 * (Where `b` is block light, 0–15) Alternatively, for the `l` scale of 0–1:
	 *     v₂(l) = 0.8^(15-15l)
	 * 
	 * I personally think the Alpha/Beta-era function looks nicer, but
	 * practically it gets dim real fast and isn't fun for non-aesthetic
	 * gameplay. Therefore, I instead define a new function `f` which is the
	 * average of the aforementioned functions `r`, `g`, and `b`:
	 *     f(l) = r(l) + g(l) + b(l) = l + (0.36l² + 0.64l) + (0.6l³ + 0.4l)
	 *            ------------------   -------------------------------------
	 *                    3                              3
	 *                               = 0.6l³ + 0.36l² + 2.04l
	 *                                 ----------------------
	 *                                            3
	 *                               = 0.2l³ + 0.12l² + 0.68l
	 * We can define `l` in the function `f` to be `bl` (block light) in the GLSL
	 * here. To potentially(?) save memory and effort, we just redefine `bl` in
	 * terms of its previous value. Also note pow() is less computationally efficient
	 * than manually typing out the exponentiation (for values <~9 I think)
	 * 
	 * To be insanely tight with computation, we can create `h`:
	 *     f(l) ≈ h(l) = 0.42l² + 0.58l
	 * Note the cases:
	 *     h(l) = f(l) ⇔ l∈{0,½,1}
	 *     h(l) < f(l),  0 < l < ½
	 *     h(l) > f(l),  ½ < l < 1
	 * The approximation `h` is also pretty good because—with the above cases in mind:
	 *     ∫₀¹⸍² f(l) - h(l) dl = ∫₁⸝₂¹ h(l) - f(l) dl
	 * i.e. The gaps between `f` and `h` are the same size on each side of l=½
	 */
	//bl = pow(0.8, 15-15*bl); // Alpha-style
	bl = 0.42*bl*bl + 0.58*bl; // Approximation of mean of modern RGB curves
	vec3 color = vec3(bl, bl, bl); // Replace Mojang's RGB values with monochromatic luminosity
	/* END TOYPACK CODE */

	if (lightmapInfo.UseBrightLightmap != 0) {
		color = mix(color, vec3(0.99, 1.12, 1.0), 0.25);
		color = clamp(color, 0.0, 1.0);
	} else {
		/* BEGIN TOYPACK CODE */
		float mean_sky_color = (lightmapInfo.SkyLightColor.r+lightmapInfo.SkyLightColor.g+lightmapInfo.SkyLightColor.b)/3;
		color += mean_sky_color*sky_brightness; // Replace Mojang's adding sky colour with just adding luminosity
		// Mojang's mix() approach of 0.04*vec3(0.75) to implement minimum block light levels causes
		// ugly brightness and colour issues (MC-225088). Instead we can just set a lower bound without
		// affecting the rest of the curve:
		color = clamp(color, 0.03, 1.0);
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
	//color = mix(color, vec3(0.75), 0.04); // Commenting out fixes MC-225088
	/* END TOYPACK CODE */
	color = clamp(color, 0.0, 1.0);

	fragColor = vec4(color, 1.0);
}

// vim: syntax=glsl:
