#version 330

/*
 * AUTHOR: Mojang, toydotgame
 * CREATED: 2025-09-04
 * Intensely bingled entity vertex shader that hijacks the tinting applied
 * to various entities in-game for various purposes specifically for the
 * purpose of mapping new DyeColor "Sheep" tint values to old Beta DyeColors
 */

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler1;
uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
#ifdef PER_FACE_LIGHTING
out vec4 vertexPerFaceColorBack;
out vec4 vertexPerFaceColorFront;
#else
out vec4 vertexColor;
#endif
out vec4 lightMapColor;
out vec4 overlayColor;
out vec2 texCoord0;

/* BEGIN TOYPACK CODE */
void swapSheepColors(inout vec3 tintVector) {
    // Most entities don't use tints, so try to catch their tint values passed
    // in and avoid further processing:
    if(tintVector == vec3(1.0, 1.0, 1.0)) return;

    // Convert input vec3 (0–1) to big scalar RGB int:
    ivec3 rgb = ivec3(255*tintVector);
    int tint = (rgb.r<<16)+(rgb.g<<8)+rgb.b;

    switch(tint) {
        case 0xE6E6E6: tint = 0xFFFFFF; break; // White
        case 0xBA6015: tint = 0xF2B233; break; // Orange
        case 0x953A8D: tint = 0xE57FD8; break; // Magenta
        case 0x2B86A3: tint = 0x99B2F2; break; // Light Blue
        case 0xBEA22D: tint = 0xE5E533; break; // Yellow
        case 0x609517: tint = 0x4FCC19; break; // Lime
        case 0xB6687F: tint = 0xF2B2CC; break; // Pink
        case 0x353B3D: tint = 0x4C4C4C; break; // Gray
        case 0x757571: tint = 0x999999; break; // Light gray
        case 0x107575: tint = 0x4C99B2; break; // Cyan
        case 0x66258A: tint = 0xB266E5; break; // Purple
        case 0x2D337F: tint = 0x3366CC; break; // Blue
        case 0x623F25: tint = 0x7F664C; break; // Brown
        case 0x465D10: tint = 0x667F33; break; // Green
        case 0x84221C: tint = 0xCC4C4C; break; // Red
        case 0x151518: tint = 0x191919; break; // Black
        default: return;
    }

    // If a tint was applied, do:
    tintVector = vec3(tint>>16, tint>>8&0xFF, tint&0xFF)/255;
    // Wash out tint colour if we applied it rather than dim it (Vanilla):
    // vec3(1.25) intentionally causes clipping past/very close to full white
    tintVector = mix(tintVector, vec3(1.35), 0.2);
}
/* END TOYPACK CODE */

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);

#ifdef PER_FACE_LIGHTING
    /* BEGIN TOYPACK CODE */
    vec3 tintColor = Color.rgb;
    swapSheepColors(tintColor); // Blindly pass in all tints and if they match a Sheep colour, yippee

    // Make mutable copies of the light direction to possibly modify:
    vec3 light0 = Light0_Direction;
    vec3 light1 = Light1_Direction;
    if(tintColor != Color.rgb) { // If we applied a custom sheep tint:
        // Emulate the harsh Beta sheep lighting. I can't really make it CRAZY
        // accurate nor effective, but I can attempt to do so by moving the entity
        // lighting directions to basically directly overhead:
        //light0 = vec3( 0.1, 1.0,  0.1); // Causes ugly issues with the non-light-modified parts of the Sheep
        //light1 = vec3(-0.1, 1.0, -0.1);
        light0 = vec3(0, 0.8, 0); // Imperfect but less ugly at least
        light1 = vec3(0, 0.8, 0);
    }

    vec2 light = minecraft_compute_light(light0, light1, Normal);
    vertexPerFaceColorBack = minecraft_mix_light_separate(-light, vec4(tintColor, Color.a));
    vertexPerFaceColorFront = minecraft_mix_light_separate(light, vec4(tintColor, Color.a));
    /* END TOYPACK CODE */
#elif defined(NO_CARDINAL_LIGHTING)
    vertexColor = Color;
#else
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
#endif
#ifndef EMISSIVE
    lightMapColor = texelFetch(Sampler2, UV2 / 16, 0);
#endif
    overlayColor = texelFetch(Sampler1, UV1, 0);

    texCoord0 = UV0;
#ifdef APPLY_TEXTURE_MATRIX
    texCoord0 = (TextureMat * vec4(UV0, 0.0, 1.0)).xy;
#endif
}

// vim: syntax=glsl:
