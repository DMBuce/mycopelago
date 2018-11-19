
import mods.thaumcraft.ArcaneWorkbench;
import mods.thaumcraft.Crucible;

# use nuggets in thaumometer recipe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
	"thaumometer", "", 20,
	[<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>], 
	<thaumcraft:thaumometer>, [
		[null, <ore:nuggetGold>, null],
		[<ore:nuggetGold>, <minecraft:glass_pane>, <ore:nuggetGold>],
		[null, <ore:nuggetGold>, null]
	]
);

# 2 terra + 5 ignis + 5 tenebrae + glass = obsidian
mods.thaumcraft.Crucible.registerRecipe(
	"CTCrucibleObsidian", "",
	<minecraft:obsidian>, <minecraft:glass>,
	[<aspect:tenebrae> * 12, <aspect:ignis> * 3, <aspect:terra> * 3]
);

# 2 terra + mushroom block = wood
<minecraft:log2:1>.removeAspects(<aspect:herba>);
mods.thaumcraft.Crucible.registerRecipe(
	"CTCrucibleWood2", "",
	<minecraft:log:0>,
	<minecraft:brown_mushroom_block>,
	[<aspect:herba> * 2]
);
mods.thaumcraft.Crucible.registerRecipe(
	"CTCrucibleWood", "",
	<minecraft:log2:1>,
	<minecraft:red_mushroom_block>,
	[<aspect:herba> * 2]
);

# rename amber ore
<thaumcraft:ore_amber>.displayName = "Amber-Bearing Netherrack";

