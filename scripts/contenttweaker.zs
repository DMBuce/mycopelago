
#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
#import mods.contenttweaker.IItemRightClick;
#import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemList;

# mutagenic paste
var mutandis = VanillaFactory.createItem("mutandis");
mutandis.register();

# mithril
var mithril = VanillaFactory.createItem("mithril_ingot");
mithril.register();

# black lotus
var blacklotus = VanillaFactory.createBlock("blacklotus", <blockmaterial:plants>);
blacklotus.blockLayer = "CUTOUT";
blacklotus.fullBlock = false;
blacklotus.translucent = true;
blacklotus.passable = true;
blacklotus.toolLevel = 0;
blacklotus.blockHardness = 0.0;
blacklotus.blockResistance = 0.0;
#blacklotus.lightValue = 15;
blacklotus.lightOpacity = 0;
blacklotus.entitySpawnable = false;
blacklotus.blockSoundType = <soundtype:plant>;
#blacklotus.setDropHandler(function(drops, world, position, state, fortune) {
#	drops.clear();
#	drops.add(<item:botania:blacklotus:1>.weight(1));
#	return;
#});
blacklotus.register();

