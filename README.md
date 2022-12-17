# ToyPack
ToyPack is my personal Minecraft Resource Pack. It uses textures from many other texture packs (see attributions), and some of my own tweaks.

**ToyPack is intended for use with the Programmer Art texture back as a fallback.** It is recommended that you do this, or else suffer having the ToyPack textures, which are based on the old style, alongside the new Jappa textures. It'll look awful; don't do it.

## Attributions
* FVdisco's oCd
* Vanilla Tweaks
* CodeCrafted
* MobAndPlayerSkinUploader's HD Paintings

## Changelog
New features in this Update (1.13.1): This update brings the pack to work with 1.19.3, alongside a few new features and bugfixes from the original 1.19 port.
+ Added old Door sound to work on wooden Trapdoors too
+ Added directional indicators for Observers, Droppers, and Dispensers
* Updated Creative inventory tabs to support the new 1.19.3 changes
* Fixed Hopper break particle
* Renamed "Red Dye" to "Rose Red" (I don't know if this was an MCPE-exclusive old name or if JE had it too but to this day it's still what I call Red Dye)
* Fixed Piston face texture to be in the oCd style again
+ Added Stone texture to the top of Furnaces (Super super old ToyPack feature I brought back through the magic of stealing JSONs from the vanilla assets)
+ Added Sticky Piston side textures for the side of the head, making it easier to see what type of Piston a Piston is without having to see the face
- Removed Iron Golem crack textures
- Removed Lena Raine BGM (The music discs and stuff are still there)
* Changed Netherite gear (tools, and armour sprites and models) to be based on the Programmer Art Diamond gear textures, but desaturated and darkened
	* Fixed Netherite armour model textures to show up correctly in 1.19+

New features in this Update (1.13): This update is both a feature update and a port to 1.19 (from 1.6.4).
* Fixed item enchantment glint to use the colour purple (In older versions, a black-white gradient was used and was hardcoded to be tinted purple, but in newer versions, the texture is purple by default and the game no longer tints the texture. This caused the enchantment glint to be a bright white in modern versions using the old texture)
* Version number in the inventory now goes over two lines, as in Survival mode there's a Recipe Book in the way, and in Creative mode the armour slots have been centered, taking up space that used to be occupied by a single line of text
- Removed monochromatic lighing, as it is not supported in Sodium or Iris, and I no longer use OptiFine
+ All Chests, Trapped Chests, and Ender Chests now have a proper, consistent 2D lock
* Updated Steve texture to support the new skin format in-game
+ Added frostbite hearts and attack indicators to the icon set
* Fixed Statistics menu sort order arrows to match all other arrow buttons in-game (they were previously not darkened)
* Fixed sounds and directory structure in `/assets/minecraft/sounds/` to the new 1.19 tree
+ Added sounds for the now "old" XP gain and ×5 level up sound effects
* Optimised Redstone Dust rendering
- Removed oars from boats (Mangrove Boats are a TODO, once Vanilla Tweaks adds a Retro/Old Planks boat texture for Mangrove Boats)
+ Re-added the \[now outdated\] pack.png icon for texture packs with no known icon (In recent versions this has been replaced by a 3D Cobblestone block)
+ Added an old-style ice textures for Packed Ice and Blue Ice
+ Added old-Netherrack-based textures for the Nylium blocks
* Poppies have been renamed to Roses
* "Teracotta" is back to "Hardened Clay"
* "Dirt Path" is back to "Grass Path"
* Zombified Piglins have been renamed back to Zombie Pigmen, alongside having their old texture back
+ Buttons go blue on hover rather than a white outline
+ Added inverted Daylight Detector texture (in the oCd style)
+ Hoppers now have arrows which point which way they're facing (No arrow appears if the Hopper is facing down)
+ Added missing oCd-style textures for the inside and front of the Pistons
+ Added Mutton sprites
* Beds have 2D sprites, like they used to
+ Added old-style plank textures for the Nylium plank blocks, and Mangrove Planks
+ Added HD banner patterns for shields
+ Added old-style Netherite armour sprites and textures when worn
+ Added uniform ores for Deepslate Ores, Nether Gold Ore, and Nether Quartz Ore
+ Added the 1.9-1.11 old Shulker colours instead of the 1.12+ colours
+ Added custom model to make an off-hand Shield lower down on the screen

New features in this Update (1.12.1):
* Resized Map texture to fit behind the map drawing, so that there's a background behind it, but not when the map is fully loaded. (This helps in 1.7+ (not adding support for that just yet) for how Maps expand fully over an Item Frame
* Fixed the Brewing Stand GUI so that those little bubble animation things are in the right position. It used to be that the empty bubbles were too far to the left by about five pixels

New features in this Update (1.12):
- Removed some non-food item sprites' black outlines
- Removed Spawn Egg texture
+ Re-added old sounds, plus I managed to get the Chest & Door sounds working too - so they're now old also
+ Re-added(?) old Lava textures
* Removed CodeCrafted Wool textures. I replaced them with some self-made denoised ones based off of the original Minecraft textures
* Replaced Glass texture with Vanilla-based one \[but it doesn't have the streaks in the middle\]
- Removed Ice texture

New features in this Update (1.11):
- Removed coloured text in `pack.mcmeta`, due to Unix systems having difficulty displaying it
+ Added new "Beta" lightmap, which makes light darker and grayscaled; like in Beta 1.3-1.7
* Fixed small edge detail in Survival inventory on the crafting grid
- Removed Infdev Bricks texture
- Removed denoised End Stone textures
- Removed stone top for furnaces (It causes problems for vertical droppers/dispensers)
- Removed water and lava textures, due to corruption
- Removed Redstone Lamp texture
- Simplified Tripwire Hook texture
- Removed Soul Sand texture
- Removed textures that were identical to Vanilla Minecraft
- [Removed lots of item sprites in an attempt to make this pack not look so crap overall](https://github.com/toydotgame/ToyPack/commit/9ff9dd0e076e670e06c162d6351327301339a842)
- Removed saturated colormap
* Changed saturation on Vines texture
- Reverted Stone Bricks to not have such dark grout lines
- Removed the H Sun
* Added more saturation to the language button as it had previously been faded
- Removed corrupted clock textures
- Removed badly positioned map icons
- Removed unused OptiFine block models folder
* Fixed corrupted sounds and cleaned files in the `sound/` directory
+ Made rain and snow less obtrusive
- Reverted Torch texture to Vanilla Minecraft's texture
* Fixed error in the Enchanting Table's GUI

New features in this Patch (1.10\_01):
- Removed connected textures and langauage files, they now are back to default. they would not load in the past for some reason, causing the pack to become useless.
* Changed name in inventories from "Toy's Pack v1.9.4" to "ToyPack v1.10"

New Features in this Update (1.10):
+ Connected glass textures

New Features in this Patch (1.9.4\_01):
* Fixed textures not loading on some machines

New Featues in this Update (1.9.4):
+ Updated version numbers
+ Brightened wither hearts by 50%
- Removed popping breathing bubble so they just dissapear once it runs out
- Removed block models folder because it does nothing and takes up space
+ Saturated colormaps
+ Ilmango golen apples
+ Absolute truckloads (like 60) of new outlined item sprites (plz appreciate it it was so tiring)
- Removed bone meal particles like when they were added (plz un nerf bone meal it was so cool)
+ Old green enderman eyes

New Features in this Update (1.9.3):
+ Old leather armour shows on player
+ Grass background is in player inventory
+ Version number is in creative inventory

New Features in this Update (1.9.2):
- Changed inventory version number
- Removed arrow in hopper due to the fact that it only faces north
- Moved positioning of the survival crafting grid and aligned the missing pixels
+ Cleaned up widgets.png
+ Added bottom outline for the unselectable button
+ Fixed crosshair in widgets.png
+ Added coloured text in the pack description

New Features in this Update (1.9.1):
+ We did it! Old sounds are compatible, we now have:
	+ Old cows
	+ Old doors and trapdoors etc
	+ Old chests
	+ Old hurt sounds!
	+ Old water sounds
	+ Old rain
	+ More that I can't list but they're there and it's amazing!
+ Changed the tripwire texture from a thick black line, to a thick grey one, and now to a bright blue one reminiscent of the original texture.
+ Modified menu buttons so the bottom outline shows due to lazy editing. haha
- No more minecart sounds like the good old days
- Quieter villagers, endermen, and ghasts
- Quieter portals too!

New Features in this Update (1.9):
+ Old brick texture
+ Old reeds texture
+ Old end stone texture
+ Portal frame texture has old end stone
+ Old lily texture
+ Old spawner texture
+ Old vine texture
+ Attempt for old chest, large chest, and ender chest models
+ Attempt for old skeleton model
+ Old pig texture
+ Old leather armour sprites
+ Black outlines around dye sprites
+ Old brown dye sprite
+ For some reason I forgot to outline the poisonous potato in a previous update, it's done now (oo, with a green hue!)
+ Old sponge texture because it's just so much more contrasting and nicer
+ Fixed position of the player location pointer on the map
+ Fixed position of the survival crafting grid in inventory
+ Fixed brewing stand potion output slot positioning
+ Fixed brewing stand brewing indicator (bubbles) position
+ Fixed severely broken achievements window texture, it has now been replaced and is more uniform to the other GUI windows
+ New comparator, daylight sensor, farmland, hopper, ice, piston, sticky piston, rails, redstone torch, repeater, TNT, torch, tripwire hook, and tripwire textures from FVdisco's oCd pack!
+ Modified the oCd hopper inside texture to show it's orientation
+ Brightened up the disabled button texture
+ Decontrasted the menu buttons

Patches in this update (1.8.1):
+ Fixed alignment of survival crafting grid.
+ Added some more outlined item sprites.
+ Fixed naming issues where the textures would not load due to having a name that only works for a newer version.
+ Fixed menu buttons to all be more uniform.
- Removed LOLCAT language as it doesn't work.
- Slime on sticky pistons doesn't show on the sides.
- Removed armour empty slot sprites so that the slot is just empty like in older versions.

New Features in this Version (1.8):
+ Cleaner and improved dark GUI due to the previous one being borked.
+ Heavily reworked inventory textures. (I spent way too much time making them look good...)
+ Simplified map icons.
+ Simple map border.
+ Old-style black border around more item sprites.
- No pebbles in dirt and grass side textures.

Features From Previous Versions:
+ Original Minecraft title.
+ Nicer pumpkin overlay.
+ Full moon is now a new moon. (All other moons are still full moons)
+ Dark theme inventory.
+ Dark theme menus.
+ Less noisy bedrock texture.
+ New crosshair.
+ Darker menu buttons.
+ Rainbow XP bar.
+ New title screen backdrop.
+ Coloured ping indicator.
+ Uniform ores.
+ Old gravel.
+ Old lava.
+ Lower snowy grass.
+ Lighter nether textures.
+ Old water.
+ Simplified redstone wire.
+ Simplified wool blocks.
+ Uniform resource blocks.
+ Hotbar slot numbers.
+ Hotbar slot numbers in inventory.
+ Thick black visible tripwires.
+ Old steve skin.
+ Old outlined food.
+ Outlined tools.
+ Smooth enchantment glint animation.
+ Rainbow border block breaking animation.
+ Old dispenser.
+ Alternate redstone lamp texture.
+ Simple glowstone texture.
+ Simple redstone torch texture.
+ High-contrast stone bricks.
+ Old cobblestone.
+ Old stone furnace top.
+ Alternate item frame sprite and block texture.

