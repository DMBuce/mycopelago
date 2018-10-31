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

# flint shears
recipes.remove(<minecraft:shears>);
recipes.addShaped("CTShears", <minecraft:shears>, [
	[null, <minecraft:flint>],
	[<minecraft:flint>, null]
]);

