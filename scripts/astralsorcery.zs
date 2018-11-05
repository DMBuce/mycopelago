
# luminous crafting table
mods.jei.JEI.addDescription(
	[
		<astralsorcery:blockmarble>,
		<minecraft:crafting_table>,
		<astralsorcery:blockaltar:0>
	],
	"Sneak and use (shift-right-click) a block of Marble on a Crafting Table to create the Luminous Crafting Table."
);
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

# smelt stardust
furnace.addRecipe(<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:2>, 0.7);

