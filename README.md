# ToyPack
ToyPack is my personal Minecraft Resource Pack. Originally, this was most of CodeCrafted (MC 1.7 version) combined with a few 1.16 Vanilla Tweaks. Today, it is a combination of multiple mostly-complete texture packs, individual features from packs, and my own personal additions, tweaks, and fixes (either my own or inspired by another pack).

**ToyPack is intended for use with the Programmer Art texture back as a fallback.** All ToyPack textures are based off or designed to look like Programmer Art textures, and thus don't work well with the new Jappa textures.

## Attributions
Copied/inspired textures appeared in these updates, from these places. Versions are also listed for older textures that are no longer in the modern release of ToyPack.

**Ancient ToyPack:**
* [FVdisco's oCd](https://www.planetminecraft.com/texture-pack/ocd-pack/) — Rails, pre-Redstone Update Redstone components, Daylight Sensor, TNT
* [Vanilla Tweaks](https://vanillatweaks.net/picker/resource-packs/) — Uncountable and changes a lot between ToyPack versions. Suffice it to say that this pack originated as a Vanilla Tweaks backport and as such is still heavily based off it today. Many tweaks have had their textures redone by me; block models have been modified by me too
* [CodeCrafted](https://codecrafted.net/) — Redstone Dust
	* **ToyPack <1.10(?):** Glass
	* **ToyPack ≤1.13.2:** Glowstone block

**ToyPack ~1.13:**
* [MobAndPlayerSkinUploader's HD Paintings](https://www.planetminecraft.com/texture-pack/hd-paintings/) — Kristoffer Zetterstrand paintings from Indev, "Wither" painting
* [ThePinkHacker's P.E. Stonecutter](https://www.curseforge.com/minecraft/texture-packs/old-stonecutter)
	* **ToyPack ~1.13→1.14.2_01:** Stonecutter textures and block model
	* **ToyPack 1.15+:** Stonecutter front and top texture rips only

**ToyPack 1.13.1:**
* [Luadewi's Classic Music Pack](https://modrinth.com/resourcepack/classic-music-pack) — sounds.json base for C418-only music, modified heavily by me for the 1.19.4+ biome-based music changes

**ToyPack 1.13.3:**
* [Injent's Legacy Console Click Sound](https://www.planetminecraft.com/texture-pack/legacy-console-click-sound/) — Menu button click sound. Not their asset but I took the LCE dumped sound file from there specifically
* [alyssajolt's Less Painful Glowstone](https://www.planetminecraft.com/texture-pack/less-painful-glowstone/) — Glowstone block

**ToyPack 1.13.4:**
* [StupidUglE123's Old Villagers](https://www.planetminecraft.com/texture-pack/old-villagers/) — Old-style Villager textures

**ToyPack 1.13.5:**
* [LaryIsland's Z-Fighting Fix](https://www.reddit.com/r/Minecraft/comments/bz360e/redstone_zfighting_overlapping_texture_glitch_fix/) — Redstone Dust block models

**ToyPack 1.13.6:**
* [IanR009's Old Boats 1.16.5](https://www.planetminecraft.com/texture-pack/old-boats-1-16-5/) — Boat sprites for Birch, Spruce, Dark Oak, Acacia, and Jungle Boats

**ToyPack 1.14:**
* [Magic's JKM Bushes Pack](https://discord.com/channels/601161964688900117/815037486443134986/1089129887132045414) — Dead Bush

**ToyPack 1.14.1:**
* [mattbatwings' MattPack](https://github.com/Xyverle/MattPack) — Redstone Lamp
* [CroaBeast's PvP Font](https://legacy.curseforge.com/minecraft/texture-packs/new-pvp-font-1-16-3) — Font, tweaked by me in more recent versions for dark mode and 1.20 font changes

**ToyPack 1.14.2:**
* [Ganaka's Inventory Fox](https://modrinth.com/resourcepack/inventory-fox) — Base sprite for the Recipe Book Fox, tweaked by me
* [PoeticRainbow's Golden Days](https://github.com/PoeticRainbow/golden-days) — Scaffolding, tweaked by me
* [miszol's Glass Bottom Boats](https://modrinth.com/resourcepack/programmer-art+-glass-bottom-boats) — Idea and layout for my version of Glass-bottomed Boats
* [SuperAnt_'s No Dark Inventory Overlay](https://modrinth.com/resourcepack/no-dark-inventory-overlay)
	* **ToyPack 1.14.2→1.14.2_01:** GUI shader base code I stole to make the Infdev blue gradient tint in MC 1.19–1.20
	* **ToyPack 1.15+:** Maybe has some origin in the GUI code I've written, but gui.vsh is definitely 100% mine and Mojang's now
* [Leobaker202's Legacy console edition visuals](https://modrinth.com/resourcepack/legacy-console-edition-visuals)
	* **ToyPack 1.14.2→1.14.2_01:** Tooltip shader code (ported by me to 1.21)
	* **ToyPack 1.15+:** RGBA values for my sprite texture adaptation

**ToyPack 1.15:**
* [XeKr's XK Redstone Display](https://modrinth.com/resourcepack/xk-redstone-display) — Note Block instruments (most of the model code, instrument and pitch sprites and fonts)
* [/u/Red\_Mersi's "Fern" screenshot and reconstruction](https://www.reddit.com/r/Minecraft/comments/1fd02lx/a_512x512_rendition_of_fern_by_kristoffer/) — _Fern_ HD painting texture, made from a screenshot from the Tricky Trials trailer
* [rich1051414's Damage Indicators Mod](https://legacy.curseforge.com/minecraft/mc-mods/damage-indicators-mod) — Health bar PNG for the _Health Indicators TXF_ "Default" bar texture
* [Narotiza's Consistent Sounds](https://modrinth.com/resourcepack/consistent-sounds) — Most of the "consistent" sounds.json data to make new blocks use the core Stone/Gravel/Wood/etc sounds for better continuity. Previously I had used this as a fallback alongside Programmer Art for ToyPack. Since ToyPack 1.15 the _Consistent Sounds_ JSON has been integrated into ToyPack to eliminate my need for multiple packs, and also so I can maintain this **now unmaintained** pack into the future/resolve conflicts with ToyPack sounds.json stuff
* [S-N00B-1's consolesounds](https://github.com/S-N00B-1/consolesounds) — As with the _Legacy Console Click Sound_ attribution, this isn't a full attribution to the author. This is a LCE asset, but it was dumped in the source tree here and so this is the location where I got the ToyPack `stonecutter_select` sound from
* [catsflex's Old Potion Colors](https://modrinth.com/resourcepack/old-potion-colors) — Pre-1.19.3 potion colours

## Requirements
ToyPack is designed to **not** require any mods or whatnot to get it working. Pre-ToyPack 1.13 (Minecraft 1.19 port update), it used to require OptiFine for things like light and colourmaps, etc. So ideally, you need to do nothing to get ToyPack working 100%.

Modern ToyPack tries its best to use the new MC 1.17+ resource pack shader pipeline and other hacks to do its best to change what it can.

### Exceptions to the above
<details><summary>Custom splash screen</summary>
If you play with <i>Accessibility</i> → <i>Monochrome Logo</i> turned <b>off</b>, ToyPack can give you the Alpha "Mojang Specifications"-era purple background.

> In ToyPack 1.12 and prior (MC 1.6.4), we used to be able to change the logo.<br>
> We can't now due to [MC-40961](https://bugs.mojang.com/browse/MC/issues/MC-40961) (which is a `Works As Intended` unresolved bug): you can't use the `minecraft/textures/gui/title/mojangstudios.png` texture to change the splash logo—the game will **always** use the embedded texture in the JAR rather than ones a resource pack provides.

</details>
<details><summary>Custom/old item names</summary>
If you can, play on <i>English (United States)</i> as your language, as ToyPack only provides override translation keys for <code>minecraft/lang/en_us.json</code>.
</details>
<details><summary><b>(IMPORTANT!)</b> Chest models</summary>
The textures for the various chests have all been 2D-ified, but I have chosen to keep their overall block model the same 14x14x14 size as opposed to a full 16x16x16 as Beta had, just 'cuz the server is going to give you that 14x14x14 hitbox when you collide with it so…lol.

ToyPack 1.15 is made for 1.21.11+, and as such the current modding scene re. optimisation of tile entities boils down to three options:
1. **Vanilla:** No action is needed for chests to display correctly! Items, block models, and Chest Minecarts all work
2. **Sodium:** No action is needed either! Out of the box, Sodium leaves Chests/etc as tile entities, so the transparency used works still and faux-2D textures work just the same.
3. **Sodium+Better Block Entities:** BBE turns all chests not currently being used/animating from tile entities into block geometry that's part of the terrain mesh. What this means is that support for transparent pixels disappears as most chests are now rendered as solid blocks are. Chest Minecarts befall the same fate as their Chests are rendered using the solid block renderer as well.
    * The fix for this is simple: I've written some shader files to allow transparent pixels in terrain (solid block) rendering. The one to fix Chest Minecarts works out of the box, but the one to fix placed chests requires the [Sodium Core Shader Support](https://modrinth.com/mod/sodium-core-shader-support) mod. Note that the Sodium+BBE combo is the _only_ case where you need this mod in turn. Sodium alone, or nothing at all (pure Vanilla) don't require this patch to be utilised
</details>
<details><summary><i>Health Indicators TXF</i> mod</summary>
Custom textures exist for this! If you remember golden age modding and the ubiquitous health bar mod, I've ported that texture for use in the modern <i>Health Indicators TXF</i> mod.

Select the "Default" bar style to use the ToyPack texture.
</details>
<details><summary>Dirt fill in Programmer Art Minecarts</summary>
If you are using the Entity Model Features mod, there is a custom model that uses the "dirt" texture present in <code>minecart.png</code> in the Programmer Art pack, back from when Minecarts were unrideable and meant to carry dirt.

I have added a plane that was removed in Release 1.18-pre2 but has been present since Infdev that showed this feature inside the bottom geometry of the Minecart and its derivatives.

Additionally, if you are able to use my custom model to re-add this, I have culled 4 faces total (meaning you net 3 faces less than the Vanilla model despite me adding the dirt geometry back) that cause UV fighting and are unnecessary to render inside the Minecart's sides.
</details>
<details><summary>Old potion colours</summary>
I couldn't quite get an OptiFine-based <code>color.properties</code> file to work (i.e. because many mods are backwards-compatible with OptiFine), so you'll just have to use <i>Polytone</i>. Polytone works out-of-the-box, so simply installing the mod is enough to get old potion colours back!
</details>
<details><summary>Removed Swamp grass/foliage colours</summary>
This uses an OptiFine custom colourmap that happens to be a rip of the regular Vanilla one. Specifying it explicitly in an OptiFine <code>.properties</code> file allows for this to apply to Swamp biomes too, which a regular <code>assets/minecraft/textures/colormap/</code> colourmap can't.

Using the <i>Polytone</i> mod is recommended, because of the other colour changes I've made (see above), but you can also just use any old mod that supports OptiFine backwards-compatibility if you like.
</details>

## Changelog
New features in this Update (1.14.2\_01): Small patch to do two things
* Made Deepslate texture a bit darker (similar tone to the Vanilla side texture rather than the lighter top texture)
* Smoothed out the continuous hotbar

New features in this Update (1.14.2): Still pack format 22 because 1.20.5 only released like 5 seconds ago and it's probably more worth it to wait for the pack format update in 1.21. However, this is a pretty major-ish update
* Fixed PvP font rendering in current pack format (some characters would render with the top of another character below it)
* Fixed music so it plays again (regardless of biome proper this time trust)
+ Added some brighter Nether Brick variants to match the brighter Netherrack and old 1.6 textures literally from version 1 of this pack
+ Added Stone and Cobblestone-based Deepslate textures
+ Deepslate bricks and Blackstone Bricks are now based on the normal Stone Bricks texture but darker
+ Deepslate tiles are now based on the Nether Bricks texture
* Fixed ores to use their Programmer Art detail texture on a background of Stone/\[the new\] Deepslate texture
+ Added Concrete textures with the 1.11- palette, taken from the CodeCrafted wool textures. I'm on the fence about the border they have so that _may_ be removed in a future update
+ Reverted splashes to a copy of the splashes from 1.6 (SOPA means LOSER in Swedish!)
+ Added the Infdev blue-to-black gradient overlay in the background of the pause menu, inventory, etc (should be 100% faithful copy from those versions I hope)
+ Added inventory fox for the Recipe Book instead of the old question mark. Sprite taken from Ganaka's inventory fox resource pack and modified slightly
* Fixed Bamboo and Cherry wood Pressure Plate and Button sounds back to a normal Wooden Button pitch
+ Re-added old Cow sounds from ye ancient days, and added some old Slime sounds
+ Re-added the Infdev Bricks texture
+ Added Beta water texture and somewhat older (more blue) colour shading
+ Added the Scaffolding from the Golden Days resource pack
+ Changed hotbar to be continuous (instead of individual cells)
+ Added Legacy Console Edition-styled tooltips, based on Leobaker202's shader file
+ Added Glass texture to the bottom of Boats, based on miszol's idea
+ Added an item ID in brackets (in the format of `(#id/nbt)`) for all items that had an ID pre-The Flattening. Yes I typed these all in manually. Yes it took two days. The ID is in the same format as if you had pressed F3+H in 1.6 or prior, this won't work for custom named items though
+ Renamed "Tall Grass" to "Double Tallgrass"
+ Added old coloured Leather Armour sprites (as a consequence of this, you can't see the item's dye colour without hovering to see its hex value)
+ Un-dumbed the fops (their eyes point forwards now rather than out)

New features in this Update (1.14.1): 1.20.4 (technically 1.20.2+) format update and a few new features
+ Reverted generic `/kill` message to "\<Player\> fell out of the world"
+ Added silly text to `death.fell.accident.water` death message
+ Added Redstone Lamps from MattPack, more visible and makes better screens
* "Short Grass" back to "Grass"
+ GUI "Back" button in modern updates is back to the old "Cancel" text like it has been since literally every version before 1.20.2 or .4 idk
+ All "Exposed" Coppers are back to "Lightly Weathered"
* Fixed GUI on 1.20.2+
* Changed compost texture to Podzol
* Changed Composter to be made out of Spruce Planks
+ Added a bunch of old biome names (i.e: "Extreme Hills" instead of "Windswept Hills")
* Fixed Realms annoying badges to disappear again thxbai
+ Added Lever power indicator texture
+ Added desaturated and shinier Tinted Glass
+ Added a PvP font face for the whole pack

New features in this Update (1.14): 1.20 pack update with a bunch of fixes and updates for all the new blocks
+ Added Goob plush because I thought it was funny (Replaces totem)
- Removed the Deepslate → Grimstone renaming
* Renamed "Yellow Dye" to "Dandelion Yellow"
* Renamed dyed Hardened Clays to "Stained Clay"
* Fixed the Mangrove sign not having Programmer Art-styled planks
+ Made Acacia leaves more orange by default, regardless of biome (however, it is most noticable in Savannas)
* Changed Oak Boat item sprite to be consistently coloured with the old sprite from Beta and not the Oak Boat sprite from the textures I got
+ Added Programmer Art style Cherry Leaves like in old mods (basically just pink Spruce Leaves)
+ Added Programmer Art styled logs and stripped logs for:
	+ Cherry
	+ Mangrove
	+ Warped
	+ Crimson
+ Added vertical bark directions for logs and stripped logs of:
	+ Cherry
	+ Mangrove
	+ Jungle
+ Added Programmer Art styled Cherry plank-based textures
+ Added Vanilla Tweaks' literal gamerule names lang fix, so that the actual names of gamerules will be shown in the create new world screen
* Fixed title logo to be compatible with 1.20 (pack-format 15)
- Removed all of the new 1.19.2 default skins and replaced them again with Steve and Alex only
+ Replaced "otherside" music disc with "Dog"
+ Added a dark red border to Dispensers to differentiate them from Droppers at a glance
+ Added Programmer Art styled Hanging Signs with plank and bark woods instead of stripped
	+ Updated GUI for editing Hanging Sign message to reflect this
+ Added an OwO face on the active Observer face because I thought it'd be funny and it kinda was
+ Renamed "Chipped Anvil" to "Damaged Anvil" and "Damaged Anvil" to "Very Damaged Anvil" (old naming)
+ Added Magic's JKM cone textures
+ Added "f" key hint to the offhand slot in the HUD
+ Added carbon fiber inspired arrow textures, and different coloured tails of arrows with potion effects/spectral. They look cool
+ Renamed the Advancements screen to Achievements
	+ Renamed the Advancement Get! toast to Achievement Get!
* Fixed container titles in the dark GUIs to always be white, but using a shader instead of a manual lang overwrite, fixing compatibility with custom named containers
+ Renamed "Block of" Bamboos to Bamboo Blocks
+ Added Among Us Suspicious Sand (with retro Sand and Gravel backgrounds) because unfunny
+ Added Wither Rose texture based off of the Rose texture
+ Renamed Pottery Sherds → Shards
+ Added an old Cocoa Bean texture to replace the Jappa Brown Dye
+ Added the old door sounds for Cherry and Bamboo Trapdoors, Doors, and Fence Gates
* Updated the Smithing Table GUI to be dark and in line with the pack
* Fixed Furnace and Brewing Stand progress arrows to be in line thank goodness
* Fixed new music suppressor for the new biomes and music.overworld music triggers
+ Added Programmer Art style Chiseled Bookshelf
+ Added dark GUI textures for Simple Voice Chat's menus
* Fixed lower sides for snowy grass
- Removed the whiter snow in favour of Programmer Art snow (bye bye yet another 1.0 feature)

New features in this Update (1.13.6): A major update with a lot of features I've planned but just let pile up instead of implementing. This is probably going to be the last update before Minecraft Release 1.20, where I'll probably bump the minor version of this pack from 1.13 to 1.14
+ New Recipe Book button that appears invisible until you hover over it, displaying a "?" icon
+ Added a border to frosted Ice (created by Frost Walker boots) in the style of the Glass block border
+ Added deep fried variants of the Fox hit and death sounds
+ Overwrote the drown, berry bush, burn, and freeze hurt sounds to all be the normal old hurt sound
+ Added slight Ice overlay to Powder Snow
- Removed the console edition Snowball texture (This is another one of the 1.0 ToyPack features from long, long ago. RIP)
+ Added Programmer Art style Powder Snow Bucket with the old Snowball and Bucket textures
+ Added Programmer Art style Campfires, with old flames, smoke, logs, and ash
* Fixed the GUI titles of the Loom, Grindstone, Cartography Table, Barrel, Smithing Table, chest Boat, and the Advancements screen to have white text to match the dark UI
* Fixed an issue with the dark Smithing Table GUI not showing up on 1.19.4+ versions of the game (causes an incompatibility with 1.19.3 and below, unfortunately)
- Removed the Lapis slot hint from the Enchanting Table
- Removed Boat oar sounds
+ Renamed "Dandelion" to "Flower"
+ Added old planks for the Mangrove and Mangrove chest Boats
+ Added Programmer Art styled Boat and chest Boat sprites
+ Added Beta styled grass, where the side colour of the grass does not change with the biome colourmap
+ Added ore borders for Budding Amethyst blocks
+ Added `age: 25` Kelp marker texture
+ Added power level text for all Redstone wires with a power level above 0
+ Added Iron Block-styled texture for Netherite Blocks, updating it to look like the other valuable storage blocks
+ Added Note Block pitch indicators
+ Added Alpha style panorama overlay, just giving you a dirt background on the title screen
+ Added transparent system message toasts (namely the alert for servers with disabled chat reporting)
	+ Changed description text for the secure chat disabled alert to read "This server has chat reporting disabled"
* Changed Dispenser/Hopper directional textures to be Programmer Art-styled
* Changed Observer powered state indicator textures to be Programmer Art-styled (not using the 1.11 snapshot for the front of the Observer though)
+ Added Programmer Art-styled Axolotl and Tadpole buckets
* Fixed existing Programmer Art bucket textures for the buckets of Pufferfish, Salmon, Cod, and Tropical Fish
+ Renamed and retextured Cod and Cod-related items to "Fish" (Yet to retexture the physical entity to be blue instead of brown, but everything else looks and says "Fish" like pre-1.13 had)
+ Fixed Z fighting of Iron Bars bases
+ Re-added Ilmango Golden Apples (this is another ancient feature I removed in the Great De-obnixification update I believe, but I wanted it back)
+ Added pre-1.18 Stipped Dark Oak Log texture (applied to Wood variant as well)
* Fixed enchantment glints to work in 1.19.4+
+ Added pumpkinblur styled freezing overlay
+ Added darker Dark Oak Leaves
+ Added shorter Tall Grass
+ Added alternate White Dye texture, because I didn't like the normal one
+ Added transparent Recipe Book GUI
+ Added pixel consistent XP orbs
* Fixed Nylium wood trapdoors to have the same sounds as all the other wood trapdoors
+ Added Stone Bricks-styled Quartz Bricks
+ Added Blue Rose from MCPE Alpha days, replacing the Blue Orchid
+ Added Programmer Art textures for the background to the Advancements screens
+ Added Bow shoot and Arrow land sounds for the Trident
- Removed Trident Loytalty return sound effect
+ Changed all "Spawn Egg" item names to say "Spawn \<Mob\>," like it used to once upon a time

New features in this Update (1.13.5): Patching some stuff and experimenting with some things that I've never really used before much in texture packs
+ Made the survival mode inventory transparent, including status effect box things
	* Changed the hotbar number hints in the survival inventory to be white, to match the rest of the text in there. The rest of the containers still have their old hotbar hint colours because they are not transparent
	* Made the brewing guide from the last update transparent as well, as it's quite large
* Fixed the long-standing issue of the Z fighting that occurs with the Redstone dot texture, which is on a lot of other Redstone Dust textures, causing them to fight and overall look bad when you look closely. Redstone wires now work as intended in all configurations
* Fixed another long-standing issue where I neglected to add white text to the GUI with the dark theme, making most text hard to read. It was kinda a "_It's not a bug, it's a feature!_" type of issue, but I've given in and fixed it now
	+ As a consequence, the category names in the creative inventory are all light blue to match the look in the tooltip. Having the category names be white in the GUI makes them white in the tooltip as well and it doesn't look good
+ Added inventory indicators to Waxed Copper blocks, similar to the indicators on Monster Eggs
+ Removed the inside of the Scaffolding texture to make it easier to see through
+ Added level indicators for:
	+ Cauldrons (Powder Snow, Lava, and Water types)
	+ Beehives and Bee Nests
+ Added Ore outlines for all ores (normal, Grimstone, and Nether variants all included)

New features in this Update (1.13.4): Preparing for 1.19.4 and 1.20 textures soon! New Boats and enchantment glint details will need to be worked out. Small 1.19.3 feature update for now
+ Added old Villager textures taken from StupidUglE123 on PMC. They're not perfectly Vanilla (see: unemployed and zombie villager textures), but they do have the old textures and remove all the new stuff that I don't like
* Fixed the Chest closing sound sometimes being the new one
* Reduced the number of splash sounds from 9/18 to 5/18 making a noise
+ Renamed most "Block of" blocks to just be "\<Material\> Block"
+ Replaced the Cod and Cooked Cod textures with the old Fish textures, and renamed their items to say "Fish" instead of "Cod" as well
* Replaced the Glowstone texture (which was actually the activated Redstone Lamp texture from CodeCrafted) with a recoloured Sea Lantern texture I found on PMC
* Removed some more item hints in the Horse and Brewing Stand GUI. The Blaze Powder hint in the Brewing Stand GUI is kept but I didn't want the bottles there because they look bad with Splash Potions in the slots
+ Added a brewing guide to the Brewing Stand GUI
+ Removed the text saying "Inventory" from all GUIs. This is so that the hints in the Brewing Stand don't overlap, but also it cleans up some other interfaces where it really doesn't need to be said

New features in this Update (1.13.3): Another small batch of new features and retro-ification! (Alongside a couple bugfixes)
+ Added old Gravel step sound ([Credit to Lyann's _Legacy Edition_ resource pack](https://www.planetminecraft.com/texture-pack/legacy-edition-1-15-2/) for the sound, but I'm not giving a full arrtibution because it is just a stock old Minecraft sound file – this is just where I got it from because I had it at hand)
+ Added old-style cast Fishing Rod texture (the Stick)
* Fixed Furnaces so that lit Furnaces also have the Stone block top and bottom texture, not just unlit ones
+ Changed "You Died!" text on the kill screen to "Game over!" like in Alpha
+ Changed "Green Dye" to "Cactus Green" (similar to what I did with Rose Red)
+ Changed "Wheat Seeds" to "Seeds" because #GoldenAgeMinecraft amirite
+ Added markers to monster egg variants of blocks in the inventory (does not affect the placed block)
+ Replaced the menu click with the Legacy Console Edition click
+ Changed "Block of Redstone" to "Redstone Block" because honestly who calls it "Block of Redstone?"
+ Readded old Sponge texture (which I thought was still in the pack, but turns out it wasnt)
+ Added old-style Netherite and Copper Ingots (based off of the Programmer Art Iron Ingot sprite)
+ Added oarless, old-style planks Chest Boats
	+ Removed the oars from Mangrove Boats and Chest Boats, but left in the new Mangrove Planks texture instead of an old one because idk, I just feel like the Mangrove things are new and maybe a bit of non-Programmer Art texturing makes them a bit more unique
+ Renamed Deepslate and its many other derivatives and blocks with its name to their snapshot name: "Grimstone" (including the ores). Honestly it was cooler
+ Renamed the Infested blocks to Monster Eggs like they used to be because I'm not used to it so why bother _ever_ being used to it?

New features in this Update (1.13.2): Yet another feature update, with some slight optimisations to how I mod sounds in the future.
* Fixed wooden Doors sometimes doing a few of the new open/close sounds even though the Door sounds directory has all the sounds replaced
+ Replaced Nylium (Crimson + Warped) Door sounds to match the wooden Door sounds
+ Replaced all Fence Gate sounds to have the old Door sounds
+ Added the old Stonecutter model and textures from Pocket Edition. Unfortunately, due to technical limitations of Minecraft resource packs, I can't change the block's hitbox
- Removed the oCd Farmland texture
+ Added back the old Button sounds for wooden and Nylium buttons
+ Added back the old Pressure Plate sounds for wooden and Nylium Pressure Plates, but I left the Weighted ones alone so that they're unique
+ Added a uniform Copper Ore (stone) texture, as it was previously missing
+ Replaced the Netherrack walk, place, and break sounds with their old Stone-based sounds
+ Renamed "Sugar Cane" to "Reeds." I think I've done this before and didn't like it, but I've decided to give it another shot anyway
+ Removed the 1.13 water ambience sounds
+ Removed the 1.13 water swim, splash, and fall sounds, and replaced them with the very old compressed-sounding water splash sounds from the Beta(?) days

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
+ Fixed alignment of survival crafting grid
+ Added some more outlined item sprites
+ Fixed naming issues where the textures would not load due to having a name that only works for a newer version
+ Fixed menu buttons to all be more uniform
- Removed LOLCAT language as it doesn't work
- Slime on sticky pistons doesn't show on the sides
- Removed armour empty slot sprites so that the slot is just empty like in older versions

New Features in this Version (1.8):
+ Cleaner and improved dark GUI due to the previous one being borked
+ Heavily reworked inventory textures (I spent way too much time making them look good...)
+ Simplified map icons
+ Simple map border
+ Old-style black border around more item sprites
- No pebbles in dirt and grass side textures

Features From Previous Versions:
+ Original Minecraft title
+ Nicer pumpkin overlay
+ Full moon is now a new moon (All other moons are still full moons)
+ Dark theme inventory
+ Dark theme menus
+ Less noisy bedrock texture
+ New crosshair
+ Darker menu buttons
+ Rainbow XP bar
+ New title screen backdrop
+ Coloured ping indicator
+ Uniform ores
+ Old gravel
+ Old lava
+ Lower snowy grass
+ Lighter nether textures
+ Old water
+ Simplified redstone wire
+ Simplified wool blocks
+ Uniform resource blocks
+ Hotbar slot numbers
+ Hotbar slot numbers in inventory
+ Thick black visible tripwires
+ Old steve skin
+ Old outlined food
+ Outlined tools
+ Smooth enchantment glint animation
+ Rainbow border block breaking animation
+ Old dispenser
+ Alternate redstone lamp texture
+ Simple glowstone texture
+ Simple redstone torch texture
+ High-contrast stone bricks
+ Old cobblestone
+ Old stone furnace top
+ Alternate item frame sprite and block texture

