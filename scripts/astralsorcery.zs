
# remove magma > lava recipe
mods.astralsorcery.Lightwell.removeLiquefaction(<minecraft:magma>, <liquid:lava>);

# add pirhana > blood recipe
mods.astralsorcery.Lightwell.addLiquefaction(<advanced-fishing:fish:4>, <liquid:lifeessence>, 1, 1, 6947333);

# add living(wood|rock) > blood recipes
mods.astralsorcery.Lightwell.addLiquefaction(<botania:livingwood>, <liquid:lifeessence>, 1, 1, 6947333);
mods.astralsorcery.Lightwell.addLiquefaction(<botania:livingrock>, <liquid:lifeessence>, 1, 1, 6947333);

# birch > silverwood, dark oak > greatwood
mods.astralsorcery.StarlightInfusion.addInfusion(
	<minecraft:log:2>,
	<thaumcraft:log_silverwood>,
	false, 0.0, 200
);
mods.astralsorcery.StarlightInfusion.addInfusion(
	<minecraft:log2:1>,
	<thaumcraft:log_greatwood>,
	false, 0.0, 250
);
#mods.astralsorcery.LightTransmutation.addTransmutation(
#	<minecraft:log:2>, <thaumcraft:log_silverwood>, 400
#);
#mods.astralsorcery.LightTransmutation.addTransmutation(
#	<minecraft:log2:1>, <thaumcraft:log_greatwood>, 450
#);

# wool > birch
mods.astralsorcery.LightTransmutation.addTransmutation(
	<minecraft:wool:0>, <minecraft:log:2>, 400
);

# oak sapling recipe
val dreamwood = <botania:dreamwood:0>;
val terrajar = <thaumcraft:jar_normal>.withTag({Aspects: [{amount: 250, key: "herba"}]});
val wiswood = <wizardry:wisdom_wood_log>;
val ritdiv = <bloodmagic:ritual_diviner>;
#	"mycopelago:shaped/internal/altar/oaksapling",
#tier5ASAltarRecipeNoConst(
mods.astralsorcery.Altar.addTraitAltarRecipe(
	"CTOakSapling", <minecraft:sapling:0>, 4500, 100,
	[
		# middle 3x3
		dreamwood, terrajar,  dreamwood,
		dreamwood, wiswood,   dreamwood,
		ritdiv,    wiswood,   ritdiv,
		# corners
		null, null, null, null,
		# the rest of the crafting grid
		dreamwood, dreamwood, null, null, ritdiv, ritdiv, null, null,
		dreamwood, dreamwood, dreamwood, wiswood,
		# outer items
		<minecraft:planks:0>, <minecraft:planks:1>,
		<minecraft:planks:2>, <minecraft:planks:3>
	]
);

# worldtree recipe
# placeholder: using creative psi rod frame for now
val gaiaspirit = <botania:manaresource:5>;
val voidseed = <thaumcraft:void_seed>;
val duskdiv = <bloodmagic:ritual_diviner:1>;
#	"mycopelago:shaped/internal/altar/worldtree",
#tier5ASAltarRecipe(
mods.astralsorcery.Altar.addTraitAltarRecipe(
	"CTEndGameItem", <psi:cad_assembly:5>, 4500, 100,
	[
		# middle 3x3
		gaiaspirit, voidseed,  gaiaspirit,
		gaiaspirit, wiswood,   gaiaspirit,
		duskdiv,    wiswood,   duskdiv,
		# corners
		null, null, null, null,
		# the rest of the crafting grid
		gaiaspirit, gaiaspirit, null, null, duskdiv, duskdiv, null, null,
		gaiaspirit, gaiaspirit, gaiaspirit, wiswood,
		# outer items
		<minecraft:log:0>, <minecraft:log:1>,
		<minecraft:log:2>, <minecraft:log:3>
	],
	"astralsorcery.constellation.aevitas"
);

# blood + starlight = birch
#LiquidInteraction.addInteraction(<liquid:astralsorcery.liquidstarlight> * 1, 0.1, <liquid:lifeessence> * 1, 0.2, 400, <minecraft:log:2>);

## luminous crafting table
#mods.jei.JEI.addDescription(
#	[
#		<astralsorcery:blockmarble>,
#		<minecraft:crafting_table>,
#		<astralsorcery:blockaltar:0>
#	],
#	"Sneak and use (shift-right-click) a block of Marble on a Crafting Table to create the Luminous Crafting Table."
#);
#
#recipes.addShaped("CTLuminous", <astralsorcery:blockaltar>, [
#	[<astralsorcery:blockmarble:3>, <astralsorcery:blockmarble:3>, <astralsorcery:blockmarble:3>],
#	[<wizardry:wisdom_wood_planks>, <minecraft:crafting_table>, <wizardry:wisdom_wood_planks>],
#	[<wizardry:wisdom_wood_planks>, <wizardry:wisdom_wood_planks>, <wizardry:wisdom_wood_planks>]
#]);

## resonating wand
#val aquamarine = <astralsorcery:itemcraftingcomponent:0>;
#recipes.addShaped("CTResonatingWand",
#	<astralsorcery:itemwand>.withTag({astralsorcery: {}}), [
#		[null,              aquamarine,        <minecraft:ender_pearl>],
#		[null,              <ore:stoneMarble>, aquamarine             ],
#		[<ore:stoneMarble>, null,              null                   ]
#]);

## smelt stardust
#furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>, 0.7);

# end portal frame recipe
val overseer = <botania:endereyeblock>;
val endstone = <minecraft:end_stone>;
val airbottle = <botania:manaresource:15>;
val endchest = <minecraft:ender_chest>;
mods.astralsorcery.Altar.addTraitAltarRecipe(
	"CTEndPortalFrame", <minecraft:end_portal_frame> * 12, 4500, 100,
	[
		# middle 3x3
		null,      null,     null,
		airbottle, endchest, airbottle,
		endstone,  endstone, endstone,
		# corners
		null, null, null, null,
		# the rest of the crafting grid
		null, null, overseer, overseer, endstone, endstone, null, null,
		null, endstone, endstone, null,
		# outer items
		<minecraft:dragon_breath>, <minecraft:chorus_flower>
	]
);

