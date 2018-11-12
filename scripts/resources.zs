# gravel > flint
recipes.addShapeless(
	"CTFlint",
	<minecraft:flint>,
	[<minecraft:gravel>]
);

# fence > stick
val woodfence = <minecraft:fence>
	| <minecraft:spruce_fence>
	| <minecraft:birch_fence>
	| <minecraft:jungle_fence>
	| <minecraft:dark_oak_fence>
	| <minecraft:acacia_fence>;
recipes.addShapeless(
	"CTFence2Stick",
	<minecraft:stick> * 3,
	[woodfence]
);

## flint shears
#recipes.remove(<minecraft:shears>);
#recipes.addShaped("CTShears", <minecraft:shears>, [
#	[null, <minecraft:flint>],
#	[<minecraft:flint>, null]
#]);

## slime block + 2 blaze powder = magma block
#recipes.addShaped("CTMagma", <minecraft:magma_block>, [
#	[<minecraft:blaze_powder>, <minecraft:slime_block>, <minecraft:blaze_powder>],
#]);

# 9 mushrooms > mushroom block
recipes.addShapeless("CTBrownMushroomBlock",
	<minecraft:brown_mushroom_block>,
	[
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>,
		<minecraft:brown_mushroom>
	]
);
recipes.addShapeless("CTRedMushroomBlock",
	<minecraft:red_mushroom_block>,
	[
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>,
		<minecraft:red_mushroom>
	]
);
#recipes.addShaped("CTBrownMushroomStem",
#	<minecraft:brown_mushroom_block:10>,
#	[ [<minecraft:brown_mushroom>],
#	  [<minecraft:brown_mushroom>],
#	  [<minecraft:brown_mushroom>] ]
#);
#recipes.addShaped("CTRedMushroomStem",
#	<minecraft:red_mushroom_block:10>,
#	[ [<minecraft:red_mushroom>],
#	  [<minecraft:red_mushroom>],
#	  [<minecraft:red_mushroom>] ]
#);

# make end portal frame breakable
# make black lotus drop botania version
val endframe = <minecraft:end_portal_frame>.asBlock().definition;
endframe.hardness = 1;
endframe.setHarvestLevel("pickaxe", 0);
events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	if (event.block.definition.id == "minecraft:end_portal_frame") {
		event.drops += <minecraft:end_portal_frame>.weight(1);
		if (event.block.meta >= 4) {
			event.drops += <minecraft:ender_eye>.weight(1);
		}
	} else if (event.block.definition.id == "contenttweaker:blacklotus") {
		event.drops = [<botania:blacklotus:1>.weight(1)];
	}
});

# end portal frame recipe
recipes.addShaped(
	"CTEndPortalFrame",
	<minecraft:end_portal_frame>,
	[ [<minecraft:ender_pearl>, <minecraft:end_crystal>, <minecraft:ender_pearl>],
	  [<minecraft:sandstone>, <minecraft:sandstone>, <minecraft:sandstone>] ]
);

# add description about stronghold to eye of ender
mods.jei.JEI.addDescription(
	<minecraft:ender_eye>,
	"There are no Strongholds in the world. You can craft End Portal Frames instead."
);

