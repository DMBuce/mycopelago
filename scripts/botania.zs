
import crafttweaker.item.IItemStack;

# lexica botania
recipes.addShapeless(
	<botania:lexicon>.withTag({}),
	[<minecraft:book>, <minecraft:red_mushroom> | <minecraft:brown_mushroom>]
);

# add vanilla mushrooms to petal oredict
#<ore:petalRed>.add(<minecraft:red_mushroom>);
#<ore:petalBrown>.add(<minecraft:brown_mushroom>);

# all petals
val anypetal = <ore:petalWhite>
	| <ore:petalOrange>
	| <ore:petalMagenta>
	| <ore:petalLightBlue>
	| <ore:petalYellow>
	| <ore:petalLime>
	| <ore:petalPink>
	| <ore:petalGray>
	| <ore:petalLightGray>
	| <ore:petalLightBlue>
	| <ore:petalPurple>
	| <ore:petalBlue>
	| <ore:petalBrown>
	| <ore:petalGreen>
	| <ore:petalRed>
	| <ore:petalBlack>;

# prismarine apothecary
val prisshard = <minecraft:prismarine_shard>;
val prisblock = <minecraft:prismarine:1>;
#recipes.remove(<botania:altar:7>, false);
#<botania:altar:7>.displayName = "Prismarine Petal Apothecary";
recipes.addShaped(
	"CTPrismarineApothecary",
	<botania:altar:7>.withTag({display: {Name: "Prismarine Petal Apothecary"}}),
	[ [ prisshard, anypetal,  prisshard ],
	  [ null,      prisblock, null      ],
	  [ prisblock, prisblock, prisblock ] ]
);

val mushroom_blocks = [
	<minecraft:brown_mushroom_block:0>,
	<minecraft:brown_mushroom_block:1>,
	<minecraft:brown_mushroom_block:2>,
	<minecraft:brown_mushroom_block:3>,
	<minecraft:brown_mushroom_block:4>,
	<minecraft:brown_mushroom_block:5>,
	<minecraft:brown_mushroom_block:6>,
	<minecraft:brown_mushroom_block:7>,
	<minecraft:brown_mushroom_block:8>,
	<minecraft:brown_mushroom_block:9>,
	<minecraft:brown_mushroom_block:10>,
	<minecraft:brown_mushroom_block:11>,
	<minecraft:brown_mushroom_block:12>,
	<minecraft:brown_mushroom_block:13>,
	<minecraft:brown_mushroom_block:14>,
	<minecraft:brown_mushroom_block:15>,
	<minecraft:red_mushroom_block:0>,
	<minecraft:red_mushroom_block:1>,
	<minecraft:red_mushroom_block:2>,
	<minecraft:red_mushroom_block:3>,
	<minecraft:red_mushroom_block:4>,
	<minecraft:red_mushroom_block:5>,
	<minecraft:red_mushroom_block:6>,
	<minecraft:red_mushroom_block:7>,
	<minecraft:red_mushroom_block:8>,
	<minecraft:red_mushroom_block:9>,
	<minecraft:red_mushroom_block:10>,
	<minecraft:red_mushroom_block:11>,
	<minecraft:red_mushroom_block:12>,
	<minecraft:red_mushroom_block:13>,
	<minecraft:red_mushroom_block:14>,
	<minecraft:red_mushroom_block:15>
] as IItemStack[];

# pure daisy
# mushroom > oak log
for block in mushroom_blocks {
	mods.botania.PureDaisy.addRecipe(
		block, <minecraft:log:0>
	);
}
# magma > obsidian
mods.botania.PureDaisy.addRecipe(<minecraft:magma>, <minecraft:obsidian>);

# apothecary
# pink + light green + light blue > crystal flower
mods.botania.Apothecary.addRecipe(
	<ebwizardry:crystal_flower>,
	[<ore:petalPink>, <ore:petalLime>, <ore:petalLightBlue>]
);

# add mushroom tooltip
mods.jei.JEI.addDescription(<contenttweaker:mutandis>, "Used to mutate mushrooms.");
mods.jei.JEI.addDescription(
	[
		<minecraft:red_mushroom>,
		<minecraft:brown_mushroom>,
		<botania:mushroom:0>,
		<botania:mushroom:1>,
		<botania:mushroom:2>,
		<botania:mushroom:3>,
		<botania:mushroom:4>,
		<botania:mushroom:5>,
		<botania:mushroom:6>,
		<botania:mushroom:7>,
		<botania:mushroom:8>,
		<botania:mushroom:9>,
		<botania:mushroom:10>,
		<botania:mushroom:11>,
		<botania:mushroom:12>,
		<botania:mushroom:13>,
		<botania:mushroom:14>,
		<botania:mushroom:15>,
		<botania:flower:0>,
		<botania:flower:1>,
		<botania:flower:2>,
		<botania:flower:3>,
		<botania:flower:4>,
		<botania:flower:5>,
		<botania:flower:6>,
		<botania:flower:7>,
		<botania:flower:8>,
		<botania:flower:9>,
		<botania:flower:10>,
		<botania:flower:11>,
		<botania:flower:12>,
		<botania:flower:13>,
		<botania:flower:14>,
		<botania:flower:15>,
		<botania:petal:0>,
		<botania:petal:1>,
		<botania:petal:2>,
		<botania:petal:3>,
		<botania:petal:4>,
		<botania:petal:5>,
		<botania:petal:6>,
		<botania:petal:7>,
		<botania:petal:8>,
		<botania:petal:9>,
		<botania:petal:10>,
		<botania:petal:11>,
		<botania:petal:12>,
		<botania:petal:13>,
		<botania:petal:14>,
		<botania:petal:15>
	],
	"Use (right-click) Mutagenic Paste on any mushroom to get another random mushroom."
);

# remove petals from oredict
<ore:petalWhite>     .remove(<botania:petal:0>);
<ore:petalOrange>    .remove(<botania:petal:1>);
<ore:petalMagenta>   .remove(<botania:petal:2>);
<ore:petalLightBlue> .remove(<botania:petal:3>);
<ore:petalYellow>    .remove(<botania:petal:4>);
<ore:petalLime>      .remove(<botania:petal:5>);
<ore:petalPink>      .remove(<botania:petal:6>);
<ore:petalGray>      .remove(<botania:petal:7>);
<ore:petalLightGray> .remove(<botania:petal:8>);
<ore:petalLightBlue> .remove(<botania:petal:9>);
<ore:petalPurple>    .remove(<botania:petal:10>);
<ore:petalBlue>      .remove(<botania:petal:11>);
<ore:petalBrown>     .remove(<botania:petal:12>);
<ore:petalGreen>     .remove(<botania:petal:13>);
<ore:petalRed>       .remove(<botania:petal:14>);
<ore:petalBlack>     .remove(<botania:petal:15>);

# remove flower-based recipes
recipes.remove(<botania:fertilizer>);
recipes.remove(<botania:flowerbag>);
recipes.remove(<botania:flower:0>);
recipes.remove(<botania:flower:1>);
recipes.remove(<botania:flower:2>);
recipes.remove(<botania:flower:3>);
recipes.remove(<botania:flower:4>);
recipes.remove(<botania:flower:5>);
recipes.remove(<botania:flower:6>);
recipes.remove(<botania:flower:7>);
recipes.remove(<botania:flower:8>);
recipes.remove(<botania:flower:9>);
recipes.remove(<botania:flower:10>);
recipes.remove(<botania:flower:11>);
recipes.remove(<botania:flower:12>);
recipes.remove(<botania:flower:13>);
recipes.remove(<botania:flower:14>);
recipes.remove(<botania:flower:15>);
recipes.remove(<botania:petal:0>);
recipes.remove(<botania:petal:1>);
recipes.remove(<botania:petal:2>);
recipes.remove(<botania:petal:3>);
recipes.remove(<botania:petal:4>);
recipes.remove(<botania:petal:5>);
recipes.remove(<botania:petal:6>);
recipes.remove(<botania:petal:7>);
recipes.remove(<botania:petal:8>);
recipes.remove(<botania:petal:9>);
recipes.remove(<botania:petal:10>);
recipes.remove(<botania:petal:11>);
recipes.remove(<botania:petal:12>);
recipes.remove(<botania:petal:13>);
recipes.remove(<botania:petal:14>);
recipes.remove(<botania:petal:15>);
mods.jei.JEI.addDescription(<botania:fertilizer>, "Not obtainable. Flowers and petals are disabled. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flowerbag>, "Not obtainable. Flowers are disabled.");
mods.jei.JEI.addDescription(<botania:flower:0>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:1>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:2>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:3>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:4>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:5>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:6>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:7>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:8>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:9>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:10>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:11>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:12>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:13>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:14>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:flower:15>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:0>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:1>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:2>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:3>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:4>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:5>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:6>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:7>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:8>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:9>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:10>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:11>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:12>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:13>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:14>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.addDescription(<botania:petal:15>, "Not obtainable. Use mushrooms instead.");
mods.jei.JEI.removeAndHide(<botania:doubleflower1:0>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:1>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:2>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:3>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:4>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:5>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:6>);
mods.jei.JEI.removeAndHide(<botania:doubleflower1:7>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:8>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:9>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:10>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:11>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:12>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:13>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:14>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower1:15>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:0>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:1>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:2>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:3>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:4>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:5>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:6>);
mods.jei.JEI.removeAndHide(<botania:doubleflower2:7>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:8>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:9>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:10>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:11>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:12>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:13>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:14>);
#mods.jei.JEI.removeAndHide(<botania:doubleflower2:15>);
mods.jei.JEI.removeAndHide(<botania:petalblock:0>);
mods.jei.JEI.removeAndHide(<botania:petalblock:1>);
mods.jei.JEI.removeAndHide(<botania:petalblock:2>);
mods.jei.JEI.removeAndHide(<botania:petalblock:3>);
mods.jei.JEI.removeAndHide(<botania:petalblock:4>);
mods.jei.JEI.removeAndHide(<botania:petalblock:5>);
mods.jei.JEI.removeAndHide(<botania:petalblock:6>);
mods.jei.JEI.removeAndHide(<botania:petalblock:7>);
mods.jei.JEI.removeAndHide(<botania:petalblock:8>);
mods.jei.JEI.removeAndHide(<botania:petalblock:9>);
mods.jei.JEI.removeAndHide(<botania:petalblock:10>);
mods.jei.JEI.removeAndHide(<botania:petalblock:11>);
mods.jei.JEI.removeAndHide(<botania:petalblock:12>);
mods.jei.JEI.removeAndHide(<botania:petalblock:13>);
mods.jei.JEI.removeAndHide(<botania:petalblock:14>);
mods.jei.JEI.removeAndHide(<botania:petalblock:15>);

# turn shimmering mushrooms into glimmering flowers
recipes.remove(<botania:shinyflower:0>);
recipes.remove(<botania:shinyflower:1>);
recipes.remove(<botania:shinyflower:2>);
recipes.remove(<botania:shinyflower:3>);
recipes.remove(<botania:shinyflower:4>);
recipes.remove(<botania:shinyflower:5>);
recipes.remove(<botania:shinyflower:6>);
recipes.remove(<botania:shinyflower:7>);
recipes.remove(<botania:shinyflower:8>);
recipes.remove(<botania:shinyflower:9>);
recipes.remove(<botania:shinyflower:10>);
recipes.remove(<botania:shinyflower:11>);
recipes.remove(<botania:shinyflower:12>);
recipes.remove(<botania:shinyflower:13>);
recipes.remove(<botania:shinyflower:14>);
recipes.remove(<botania:shinyflower:15>);
recipes.addShapeless("CTWhiteShinyFlower",
	<botania:shinyflower:0>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:0>]
);
recipes.addShapeless("CTOrangeShinyFlower",
	<botania:shinyflower:1>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:1>]
);
recipes.addShapeless("CTMagentaShinyFlower",
	<botania:shinyflower:2>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:2>]
);
recipes.addShapeless("CTLightBlueShinyFlower",
	<botania:shinyflower:3>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:3>]
);
recipes.addShapeless("CTYellowShinyFlower",
	<botania:shinyflower:4>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:4>]
);
recipes.addShapeless("CTLimeShinyFlower",
	<botania:shinyflower:5>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:5>]
);
recipes.addShapeless("CTPinkShinyFlower",
	<botania:shinyflower:6>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:6>]
);
recipes.addShapeless("CTGrayShinyFlower",
	<botania:shinyflower:7>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:7>]
);
recipes.addShapeless("CTLightGrayShinyFlower",
	<botania:shinyflower:8>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:8>]
);
recipes.addShapeless("CTCyanShinyFlower",
	<botania:shinyflower:9>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:9>]
);
recipes.addShapeless("CTPurpleShinyFlower",
	<botania:shinyflower:10>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:10>]
);
recipes.addShapeless("CTBlueShinyFlower",
	<botania:shinyflower:11>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:11>]
);
recipes.addShapeless("CTBrownShinyFlower",
	<botania:shinyflower:12>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:12>]
);
recipes.addShapeless("CTGreenShinyFlower",
	<botania:shinyflower:13>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:13>]
);
recipes.addShapeless("CTRedShinyFlower",
	<botania:shinyflower:14>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:14>]
);
recipes.addShapeless("CTBlackShinyFlower",
	<botania:shinyflower:15>,
	[<contenttweaker:mutandis>, <minecraft:glowstone_dust>, <botania:mushroom:15>]
);

# replace petals in cosmetic recipes
recipes.remove(<botania:cosmetic:0>);
recipes.remove(<botania:cosmetic:1>);
recipes.remove(<botania:cosmetic:2>);
recipes.remove(<botania:cosmetic:3>);
recipes.remove(<botania:cosmetic:4>);
recipes.remove(<botania:cosmetic:5>);
recipes.remove(<botania:cosmetic:6>);
recipes.remove(<botania:cosmetic:7>);
recipes.remove(<botania:cosmetic:8>);
recipes.remove(<botania:cosmetic:9>);
recipes.remove(<botania:cosmetic:10>);
recipes.remove(<botania:cosmetic:11>);
recipes.remove(<botania:cosmetic:12>);
recipes.remove(<botania:cosmetic:13>);
recipes.remove(<botania:cosmetic:14>);
recipes.remove(<botania:cosmetic:15>);
recipes.addShaped("CTCosmetic0", <botania:cosmetic:0>, [
	[<botania:mushroom:0>, <botania:mushroom:0>, <botania:mushroom:0>],
	[<botania:mushroom:0>, <botania:manaresource:16>, <botania:mushroom:0>],
	[<botania:mushroom:0>, <botania:mushroom:0>, <botania:mushroom:0>]
]);
recipes.addShaped("CTCosmetic1", <botania:cosmetic:1>, [
	[<botania:mushroom:1>, <botania:mushroom:1>, <botania:mushroom:1>],
	[<botania:mushroom:1>, <botania:manaresource:16>, <botania:mushroom:1>],
	[<botania:mushroom:1>, <botania:mushroom:1>, <botania:mushroom:1>]
]);
recipes.addShaped("CTCosmetic2", <botania:cosmetic:2>, [
	[<botania:mushroom:2>, <botania:mushroom:2>, <botania:mushroom:2>],
	[<botania:mushroom:2>, <botania:manaresource:16>, <botania:mushroom:2>],
	[<botania:mushroom:2>, <botania:mushroom:2>, <botania:mushroom:2>]
]);
recipes.addShaped("CTCosmetic3", <botania:cosmetic:3>, [
	[<botania:mushroom:3>, <botania:mushroom:3>, <botania:mushroom:3>],
	[<botania:mushroom:3>, <botania:manaresource:16>, <botania:mushroom:3>],
	[<botania:mushroom:3>, <botania:mushroom:3>, <botania:mushroom:3>]
]);
recipes.addShaped("CTCosmetic4", <botania:cosmetic:4>, [
	[<botania:mushroom:4>, <botania:mushroom:4>, <botania:mushroom:4>],
	[<botania:mushroom:4>, <botania:manaresource:16>, <botania:mushroom:4>],
	[<botania:mushroom:4>, <botania:mushroom:4>, <botania:mushroom:4>]
]);
recipes.addShaped("CTCosmetic5", <botania:cosmetic:5>, [
	[<botania:mushroom:5>, <botania:mushroom:5>, <botania:mushroom:5>],
	[<botania:mushroom:5>, <botania:manaresource:16>, <botania:mushroom:5>],
	[<botania:mushroom:5>, <botania:mushroom:5>, <botania:mushroom:5>]
]);
recipes.addShaped("CTCosmetic6", <botania:cosmetic:6>, [
	[<botania:mushroom:6>, <botania:mushroom:6>, <botania:mushroom:6>],
	[<botania:mushroom:6>, <botania:manaresource:16>, <botania:mushroom:6>],
	[<botania:mushroom:6>, <botania:mushroom:6>, <botania:mushroom:6>]
]);
recipes.addShaped("CTCosmetic7", <botania:cosmetic:7>, [
	[<botania:mushroom:7>, <botania:mushroom:7>, <botania:mushroom:7>],
	[<botania:mushroom:7>, <botania:manaresource:16>, <botania:mushroom:7>],
	[<botania:mushroom:7>, <botania:mushroom:7>, <botania:mushroom:7>]
]);
recipes.addShaped("CTCosmetic8", <botania:cosmetic:8>, [
	[<botania:mushroom:8>, <botania:mushroom:8>, <botania:mushroom:8>],
	[<botania:mushroom:8>, <botania:manaresource:16>, <botania:mushroom:8>],
	[<botania:mushroom:8>, <botania:mushroom:8>, <botania:mushroom:8>]
]);
recipes.addShaped("CTCosmetic9", <botania:cosmetic:9>, [
	[<botania:mushroom:9>, <botania:mushroom:9>, <botania:mushroom:9>],
	[<botania:mushroom:9>, <botania:manaresource:16>, <botania:mushroom:9>],
	[<botania:mushroom:9>, <botania:mushroom:9>, <botania:mushroom:9>]
]);
recipes.addShaped("CTCosmetic10", <botania:cosmetic:10>, [
	[<botania:mushroom:10>, <botania:mushroom:10>, <botania:mushroom:10>],
	[<botania:mushroom:10>, <botania:manaresource:16>, <botania:mushroom:10>],
	[<botania:mushroom:10>, <botania:mushroom:10>, <botania:mushroom:10>]
]);
recipes.addShaped("CTCosmetic11", <botania:cosmetic:11>, [
	[<botania:mushroom:11>, <botania:mushroom:11>, <botania:mushroom:11>],
	[<botania:mushroom:11>, <botania:manaresource:16>, <botania:mushroom:11>],
	[<botania:mushroom:11>, <botania:mushroom:11>, <botania:mushroom:11>]
]);
recipes.addShaped("CTCosmetic12", <botania:cosmetic:12>, [
	[<botania:mushroom:12>, <botania:mushroom:12>, <botania:mushroom:12>],
	[<botania:mushroom:12>, <botania:manaresource:16>, <botania:mushroom:12>],
	[<botania:mushroom:12>, <botania:mushroom:12>, <botania:mushroom:12>]
]);
recipes.addShaped("CTCosmetic13", <botania:cosmetic:13>, [
	[<botania:mushroom:13>, <botania:mushroom:13>, <botania:mushroom:13>],
	[<botania:mushroom:13>, <botania:manaresource:16>, <botania:mushroom:13>],
	[<botania:mushroom:13>, <botania:mushroom:13>, <botania:mushroom:13>]
]);
recipes.addShaped("CTCosmetic14", <botania:cosmetic:14>, [
	[<botania:mushroom:14>, <botania:mushroom:14>, <botania:mushroom:14>],
	[<botania:mushroom:14>, <botania:manaresource:16>, <botania:mushroom:14>],
	[<botania:mushroom:14>, <botania:mushroom:14>, <botania:mushroom:14>]
]);
recipes.addShaped("CTCosmetic15", <botania:cosmetic:15>, [
	[<botania:mushroom:15>, <botania:mushroom:15>, <botania:mushroom:15>],
	[<botania:mushroom:15>, <botania:manaresource:16>, <botania:mushroom:15>],
	[<botania:mushroom:15>, <botania:mushroom:15>, <botania:mushroom:15>]
]);
