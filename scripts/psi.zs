
# rod constructor
recipes.remove(<psi:cad_assembler>);
recipes.addShaped(<psi:cad_assembler>,
	[ [<ore:nuggetGold>, <ore:logWood>,    <ore:nuggetGold>],
	  [<ore:logWood>,           <minecraft:crafting_table>, <ore:logWood>],
	  [null,                    <ore:ingotGold>,              null] ]
);

# spell inscriber
recipes.remove(<psi:programmer>);
recipes.addShaped(<psi:programmer>,
	[ [<ore:logWood>,           <minecraft:map>,  <ore:logWood>          ],
	  [<ore:nuggetGold>, <psi:material:0>, <ore:nuggetGold>],
	  [<ore:logWood>,           null,             <ore:logWood>          ] ]
);

## disabled so that the player is forced to get familiar with psi's tutorial
#
## psidust
#mods.jei.JEI.addDescription(
#	<psi:material:0>,
#	"Drop a piece of Redstone Dust and use (right-click) a Rod on it to create Psidust. You can make a basic Rod by putting an Iron Rod Frame in a Rod Constructor."
#);
#
## psimetal
#mods.jei.JEI.addDescription(
#	<psi:material:1>,
#	"Drop an Iron Ingot and use (right-click) a Rod on it to create Psidust. You can make a basic Rod by putting an Iron Rod Frame in a Rod Constructor."
#);
#
## psigem
#mods.jei.JEI.addDescription(
#	<psi:material:2>,
#	"Drop a Diamond and use (right-click) a Rod on it to create Psidust. You can make a basic Rod by putting an Iron Rod Frame in a Rod Constructor."
#);

# ebony substance
#	<psi:material:5>,

# ivory substance
#	<psi:material:6>,

# use psi materials to guide player to the in-game tutorial
mods.jei.JEI.addDescription(
	[<psi:material:0>, <psi:material:1>, <psi:material:2>,
	 <psi:material:5>, <psi:material:6> ],
	"To get started with Psi, press 'C' and follow the instructions."
);

# iron rod frame
recipes.remove(<psi:cad_assembly:0>);
recipes.addShaped(<psi:cad_assembly:0>,
	[ [<ore:nuggetIron>, null,            null                   ],
	  [<ore:nuggetIron>, <ore:stickWood>, <ore:nuggetIron>],
	  [null,                    null,            <ore:nuggetIron>] ]
);

# gold rod frame
recipes.remove(<psi:cad_assembly:1>);
recipes.addShaped(<psi:cad_assembly:1>,
	[ [<ore:nuggetGold>, null,            null                   ],
	  [<ore:nuggetGold>, <ore:stickWood>, <ore:nuggetGold>],
	  [null,                    null,            <ore:nuggetGold>] ]
);

# psimetal rod frame
recipes.remove(<psi:cad_assembly:2>);
recipes.addShaped(<psi:cad_assembly:2>,
	[ [<psi:material:1>, null,            null            ],
	  [<psi:material:1>, <ore:plankWood>, <psi:material:1>],
	  [null,             null,            <psi:material:1>] ]
);

# humble rod crux
recipes.remove(<psi:cad_core:0>);
recipes.addShaped(<psi:cad_core:0>,
	[ [<ore:nuggetIron>, null,             null                   ],
	  [<minecraft:redstone>,    <psi:material:0>, <minecraft:redstone>   ],
	  [null,                    null,             <ore:nuggetIron>] ]
);

# quick rod crux
recipes.remove(<psi:cad_core:1>);
recipes.addShaped(<psi:cad_core:1>,
	[ [<ore:nuggetGold>, null,             null                   ],
	  [<minecraft:redstone>,    <psi:material:1>, <minecraft:redstone>   ],
	  [null,                    null,             <ore:nuggetGold>] ]
);

# bright rod crux
recipes.remove(<psi:cad_core:2>);
recipes.addShaped(<psi:cad_core:2>,
	[ [<ore:nuggetGold>,    null,             null ],
	  [<minecraft:glowstone_dust>, <psi:material:1>, <minecraft:glowstone_dust>],
	  [null,                       null,             <ore:nuggetGold>] ]
);

# minor rod notch
recipes.remove(<psi:cad_socket:0>);
recipes.addShaped(<psi:cad_socket:0>,
	[ [<psi:material:0>, <ore:stickWood>, null],
	  [<ore:stickWood>,  null,            null],
	  [null,             null,            null] ]
);

# flashing rod notch
recipes.remove(<psi:cad_socket:1>);
recipes.addShaped(<psi:cad_socket:1>,
	[ [<minecraft:redstone>, <psi:material:1>, <ore:plankWood>],
	  [<psi:material:1>,     <ore:plankWood>,  null           ],
	  [<ore:plankWood>,      null,             null           ] ]
);

# medium rod notch
recipes.remove(<psi:cad_socket:2>);
recipes.addShaped(<psi:cad_socket:2>,
	[ [<minecraft:glowstone_dust>, <psi:material:1>, <ore:plankWood>],
	  [<psi:material:1>,           <ore:plankWood>,  null           ],
	  [<ore:plankWood>,            null,             null           ] ]
);

# glowing rod source
recipes.remove(<psi:cad_battery:0>);
recipes.addShaped(<psi:cad_battery:0>,
	[ [<ore:nuggetGold>],
	  [<psi:material:0>       ],
	  [<ore:nuggetGold>] ]
);

# spell node
recipes.remove(<psi:spell_bullet:0>);
recipes.addShaped(<psi:spell_bullet:0>,
	[ [<psi:material:0>, <minecraft:paper>],
	  [null,             <ore:plankWood>  ] ]
);

# clear bullets in crafting grid
recipes.addShapeless("CTClearBullet",
	<psi:spell_bullet:0>, [<psi:spell_bullet:1>]
);

# simple block-breaking spell
#val breakblock = <psi:spell_bullet:1>.withTag({spell: {spellName: "Break Block", uuidMost: -2322073553933352628 as long, validSpell: 1 as byte, spellList: [{data: {key: "constantNumber", constantValue: "5"}, x: 1, y: 4}, {data: {params: {_target: 4}, key: "operatorEntityPosition"}, x: 2, y: 3}, {data: {params: {_ray: 4, _max: 3, _position: 1}, key: "operatorVectorRaycast"}, x: 2, y: 4}, {data: {params: {_position: 1}, key: "trickBreakBlock"}, x: 2, y: 5}, {data: {key: "selectorCaster"}, x: 3, y: 3}, {data: {params: {_target: 1}, key: "operatorEntityLook"}, x: 3, y: 4}], uuidLeast: -6840038023343653017 as long}});
val breakblock = <psi:spell_bullet:1>.withTag({spell: {spellName: "Break Block", uuidMost: -3557174120712679806 as long, validSpell: 1 as byte, spellList: [{data: {key: "constantNumber", constantValue: "5"}, x: 1, y: 4}, {data: {params: {_target: 4}, key: "operatorEntityPosition"}, x: 2, y: 3}, {data: {params: {_ray: 4, _max: 3, _position: 1}, key: "operatorVectorRaycast"}, x: 2, y: 4}, {data: {params: {_position: 1}, key: "trickBreakBlock"}, x: 2, y: 5}, {data: {key: "selectorCaster"}, x: 3, y: 3}, {data: {params: {_target: 1}, key: "operatorEntityLook"}, x: 3, y: 4}, {data: {key: "errorSuppressor"}, x: 3, y: 5}], uuidLeast: -4618083312826607580 as long}});
recipes.addShapeless(
	"CTBlockBreakBullet",
	breakblock,
	[
		<psi:spell_bullet:0>,
		<minecraft:wooden_pickaxe>,
		<minecraft:wooden_axe>,
		<minecraft:wooden_shovel>
	]
);
mods.jei.JEI.addItem(breakblock);
mods.jei.JEI.addDescription(
	<psi:spell_bullet:0>,
	"Craft a Spell Node with a Wooden Pickaxe, Axe, and Shovel to get a basic block-breaking spell."
);

