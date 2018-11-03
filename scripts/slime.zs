
# LootTweaker imports
import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;

# slime loot tables
val slimetable = LootTables.getTable("minecraft:entities/slime");
val slimedrops = slimetable.getPool("main");
#val fishes   = fishtable.addPool("fishes", 1, 2, 0, 0);

# drop slimeballs and eggs at a 2:1 ratio
slimedrops.removeEntry("minecraft:slime_ball");
#slimedrops.addItemEntry(<minecraft:slime_ball>, 2);
slimedrops.addItemEntry(<minecraft:egg>, 1, 0);
slimedrops.addItemEntryJson(
	<minecraft:slime_ball>, 2, 0,
	[
		{"count": {"min": 0.0, "max": 2.0}, "function": "minecraft:set_count"},
		{"count": {"min": 0.0, "max": 1.0}, "function": "minecraft:looting_enchant"}
	],
	[]
);

