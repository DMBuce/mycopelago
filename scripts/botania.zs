
# lexica botania
recipes.addShapeless(
	<botania:lexicon>.withTag({}),
	[<minecraft:book>, <minecraft:red_mushroom> | <minecraft:brown_mushroom>]
);

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
<botania:altar:7>.displayName = "Prismarine Petal Apothecary";
recipes.addShaped(
	"CTPrismarineApothecary",
	<botania:altar:7>,
	[ [ prisshard, anypetal,  prisshard ],
	  [ null,      prisblock, null      ],
	  [ prisblock, prisblock, prisblock ] ]
);

# pure daisy
# magma > obsidian
mods.botania.PureDaisy.addRecipe(<minecraft:magma>, <minecraft:obsidian>);
# mushroom > oak log
mods.botania.PureDaisy.addRecipe(
	<minecraft:brown_mushroom_block>,
	<minecraft:log:0>
);
mods.botania.PureDaisy.addRecipe(
	<minecraft:red_mushroom_block>,
	<minecraft:log:0>
);

# apothecary
# pink + light green + light blue > crystal flower
mods.botania.Apothecary.addRecipe(
	<ebwizardry:crystal_flower>,
	[<ore:petalPink>, <ore:petalLime>, <ore:petalLightBlue>]
);

