
# add tooltip
val mithril = <contenttweaker:mithril_ingot>;
mods.jei.JEI.addDescription(mithril, "A very versatile metal.");

# add mithril to a bunch of oredicts
<ore:ingotManasteel>       .add(mithril);
<ore:ingotBrass>           .add(mithril);
<ore:ingotAstralStarmetal> .add(mithril);
<ore:ingotPsi>             .add(mithril);

