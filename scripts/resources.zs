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

