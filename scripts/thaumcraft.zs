
import mods.thaumcraft.ArcaneWorkbench;

# use ingots in goggle recipe
mods.thaumcraft.ArcaneWorkbench.removeRecipe(<thaumcraft:thaumometer>);
mods.thaumcraft.ArcaneWorkbench.registerShapedRecipe(
	"thaumometer", "", 20,
	[<aspect:aer>, <aspect:terra>, <aspect:aqua>, <aspect:ignis>, <aspect:ordo>, <aspect:perditio>], 
	<thaumcraft:thaumometer>, [
		[null, <minecraft:gold_nugget>, null],
		[<minecraft:gold_nugget>, <minecraft:glass_pane>, <minecraft:gold_nugget>],
		[null, <minecraft:gold_nugget>, null]
	]
);

