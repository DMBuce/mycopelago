
# alchemical table: 3 planks + paper = spruce
mods.bloodmagic.AlchemyTable.addRecipe(
	<minecraft:log:1>,
	[<ore:plankWood>, <ore:plankWood>, <minecraft:paper>],
	10, 5, 0
);

# birch > silverwood, dark oak > greatwood
mods.bloodmagic.AlchemyArray.addRecipe(
	<thaumcraft:log_silverwood>, <contenttweaker:mutandis>, <minecraft:log:2>,
	"bloodmagic:textures/models/alchemyarrays/growthsigil.png"
);
mods.bloodmagic.AlchemyArray.addRecipe(
	<thaumcraft:log_greatwood>, <contenttweaker:mutandis>, <minecraft:log2:1>,
	"bloodmagic:textures/models/alchemyarrays/growthsigil.png"
);

