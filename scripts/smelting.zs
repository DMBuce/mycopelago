
# smelt down rails, minecarts
val ironrails = <minecraft:rail> | <minecraft:detector_rail> | <minecraft:activator_rail>;
#val goldrails = <minecraft:golden_rail> | <minecraft:powered_rail>;
furnace.addRecipe(<minecraft:iron_nugget>, ironrails, 0.1);
furnace.addRecipe(<minecraft:gold_nugget>, <minecraft:golden_rail>, 0.1);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:minecart>, 0.7);

