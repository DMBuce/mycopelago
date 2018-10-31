
# LootTweaker imports
import loottweaker.vanilla.loot.LootTables;  
import loottweaker.vanilla.loot.LootTable;  
import loottweaker.vanilla.loot.LootPool;

# fishing loot tables
val fishtable     = LootTables.getTable("minecraft:gameplay/fishing/fish");
val junktable     = LootTables.getTable("minecraft:gameplay/fishing/junk");
val treasuretable = LootTables.getTable("minecraft:gameplay/fishing/treasure");
val fishes   = fishtable.addPool("fishes", 1, 2, 0, 0);
val junk     = junktable.getPool("main");
val treasure = treasuretable.getPool("main");

# tweak fish
# "entryName": "minecraft:fish",   "weight": 60,
# "entryName": "minecraft:fish#0", "weight": 25,
# "entryName": "minecraft:fish#1", "weight": 2,
# "entryName": "minecraft:fish#2", "weight": 13,
fishtable.removePool("main");
fishes.addItemEntry(<minecraft:fish:0>, 6); # cod        (default weight 60)
fishes.addItemEntry(<minecraft:fish:1>, 5); # salmon     (default weight 25)
fishes.addItemEntry(<minecraft:fish:2>, 2); # clownfish  (default weight 2)
fishes.addItemEntry(<minecraft:fish:3>, 2); # pufferfish (default weight 13)
fishes.addItemEntry(<advanced-fishing:fish:0>, 2);
fishes.addItemEntry(<advanced-fishing:fish:1>, 5); # magma jellyfish
fishes.addItemEntry(<advanced-fishing:fish:2>, 2);
fishes.addItemEntry(<advanced-fishing:fish:3>, 2);
fishes.addItemEntry(<advanced-fishing:fish:4>, 2);
fishes.addItemEntry(<advanced-fishing:fish:5>, 2); # golden koi
fishes.addItemEntry(<advanced-fishing:fish:6>, 2);
fishes.addItemEntry(<advanced-fishing:fish:7>, 2);
fishes.addItemEntry(<advanced-fishing:fish:8>, 5); # obsidian bream
#fishes.addItemEntry(<advanced-fishing:fish:9>, 0); # nether sturgeon
#fishes.addItemEntry(<advanced-fishing:fish:10>, 0); # quartz chub
fishes.addItemEntry(<advanced-fishing:fish:11>, 2); # flarefin koi
#fishes.addItemEntry(<advanced-fishing:fish:12>, 0); # blaze pike
#fishes.addItemEntry(<advanced-fishing:fish:13>, 0); # ender shad
fishes.addItemEntry(<advanced-fishing:fish:14>, 2);
#fishes.addItemEntry(<advanced-fishing:fish:15>, 0); # chorus koi
fishes.addItemEntry(<advanced-fishing:fish:16>, 2);
fishes.addItemEntry(<advanced-fishing:fish:17>, 2);
fishes.addItemEntry(<advanced-fishing:fish:18>, 2);
fishes.addItemEntry(<advanced-fishing:fish:19>, 4); # angelfish
fishes.addItemEntry(<advanced-fishing:fish:20>, 2);
fishes.addItemEntry(<advanced-fishing:fish:21>, 2);
fishes.addItemEntry(<advanced-fishing:fish:22>, 2);
fishes.addItemEntry(<advanced-fishing:fish:23>, 2);
#fishes.addItemEntry(<advanced-fishing:fish:24>, 0); # withered crucian
fishes.addItemEntry(<advanced-fishing:fish:25>, 2);
fishes.addItemEntry(<advanced-fishing:fish:26>, 2);
fishes.addItemEntry(<advanced-fishing:fish:27>, 6); # red shroomfin
fishes.addItemEntry(<advanced-fishing:fish:28>, 6); # brown shroomfin
fishes.addItemEntry(<advanced-fishing:fish:29>, 2); # fungi catfish
fishes.addItemEntry(<advanced-fishing:fish:30>, 2);
fishes.addItemEntry(<advanced-fishing:fish:31>, 2);
fishes.addItemEntry(<advanced-fishing:fish:32>, 2);
fishes.addItemEntry(<advanced-fishing:fish:33>, 2);
fishes.addItemEntry(<advanced-fishing:fish:34>, 1); # sunfish
fishes.addItemEntry(<advanced-fishing:fish:35>, 2);
fishes.addItemEntry(<advanced-fishing:fish:36>, 2); # catfish
fishes.addItemEntry(<advanced-fishing:fish:37>, 2); # pike
fishes.addItemEntry(<advanced-fishing:fish:38>, 2);
fishes.addItemEntry(<advanced-fishing:fish:39>, 2);
fishes.addItemEntry(<advanced-fishing:fish:40>, 2);
#fishes.addItemEntry(<advanced-fishing:fish:41>, 0); # cursed koi
#fishes.addItemEntry(<advanced-fishing:fish:42>, 0); # spookyfin

# tweak junk
junk.removeEntry("minecraft:leather_boots");
junk.removeEntry("minecraft:string");
junk.addItemEntry(<minecraft:string> * 2, 15);
val extrastring = junktable.addPool("string", 0, 2, 0, 0);
extrastring.addItemEntry(<minecraft:string>, 100);

# add ebwizardry novice/apprentice books
# 12 novice books     * 4 weight = 48 total weight
# 12 novice books     * 5 weight = 60 total weight
# 12 novice books     * 6 weight = 72 total weight
# 35 apprentice books * 1 weight = 35 total weight
val wizardbooks = treasuretable.addPool("ebwizardry", 0, 1, 0, 0);
wizardbooks.addItemEntry(<ebwizardry:spell_book:1>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:2>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:3>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:4>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:5>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:6>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:7>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:8>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:9>,  5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:10>, 5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:11>, 5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:12>, 5);
wizardbooks.addItemEntry(<ebwizardry:spell_book:13>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:14>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:15>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:16>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:17>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:18>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:19>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:20>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:21>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:22>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:23>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:24>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:25>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:26>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:27>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:28>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:29>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:30>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:31>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:32>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:33>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:34>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:35>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:36>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:37>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:38>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:39>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:40>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:41>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:42>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:43>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:44>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:45>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:46>, 1);
wizardbooks.addItemEntry(<ebwizardry:spell_book:47>, 1);

