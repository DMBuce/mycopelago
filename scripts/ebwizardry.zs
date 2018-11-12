
# arcane worktable
recipes.removeShaped(<ebwizardry:arcane_workbench>, [
	[<ore:nuggetGold>, <minecraft:carpet:10>, <ore:nuggetGold>],
	[<ebwizardry:magic_crystal>, <minecraft:lapis_block>, <ebwizardry:magic_crystal>],
	[<minecraft:stone:0>, <minecraft:stone:0>, <minecraft:stone:0>]
]);
recipes.addShaped(
	"CTArcaneWorkbench",
	<ebwizardry:arcane_workbench>,
	[
		[<ore:nuggetGold>, <minecraft:carpet:10>, <ore:nuggetGold>],
		[<ebwizardry:magic_crystal>, <minecraft:crafting_table>, <ebwizardry:magic_crystal>],
		[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>]
	]
);

# botania mana bottle > mana flask
recipes.addShapeless(
	"CTManaBottle2Flask",
	<ebwizardry:mana_flask> * 2,
	[<botania:manabottle>]
);
recipes.addShapeless(
	"CTManaFlask2Bottle",
	<botania:manabottle>,
	[<ebwizardry:mana_flask>, <ebwizardry:mana_flask>]
);

