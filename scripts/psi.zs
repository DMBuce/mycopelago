
# rod constructor
recipes.remove(<psi:cad_assembler>);
recipes.addShaped(<psi:cad_assembler>,
	[ [<minecraft:gold_nugget>, <ore:logWood>,    <minecraft:gold_nugget>],
	  [<ore:logWood>,           <minecraft:crafting_table>, <ore:logWood>],
	  [null,                    <minecraft:gold_ingot>,              null] ]
);

# spell inscriber
recipes.remove(<psi:programmer>);
recipes.addShaped(<psi:programmer>,
	[ [<ore:logWood>,           <minecraft:map>,  <ore:logWood>          ],
	  [<minecraft:gold_nugget>, <psi:material:0>, <minecraft:gold_nugget>],
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
	[ [<minecraft:iron_nugget>, null,            null                   ],
	  [<minecraft:iron_nugget>, <ore:stickWood>, <minecraft:iron_nugget>],
	  [null,                    null,            <minecraft:iron_nugget>] ]
);

# gold rod frame
recipes.remove(<psi:cad_assembly:1>);
recipes.addShaped(<psi:cad_assembly:1>,
	[ [<minecraft:gold_nugget>, null,            null                   ],
	  [<minecraft:gold_nugget>, <ore:stickWood>, <minecraft:gold_nugget>],
	  [null,                    null,            <minecraft:gold_nugget>] ]
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
	[ [<minecraft:iron_nugget>, null,             null                   ],
	  [<minecraft:redstone>,    <psi:material:0>, <minecraft:redstone>   ],
	  [null,                    null,             <minecraft:iron_nugget>] ]
);

# quick rod crux
recipes.remove(<psi:cad_core:1>);
recipes.addShaped(<psi:cad_core:1>,
	[ [<minecraft:gold_nugget>, null,             null                   ],
	  [<minecraft:redstone>,    <psi:material:1>, <minecraft:redstone>   ],
	  [null,                    null,             <minecraft:gold_nugget>] ]
);

# bright rod crux
recipes.remove(<psi:cad_core:2>);
recipes.addShaped(<psi:cad_core:2>,
	[ [<minecraft:gold_nugget>,    null,             null ],
	  [<minecraft:glowstone_dust>, <psi:material:1>, <minecraft:glowstone_dust>],
	  [null,                       null,             <minecraft:gold_nugget>] ]
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
	[ [<minecraft:gold_nugget>],
	  [<psi:material:0>       ],
	  [<minecraft:gold_nugget>] ]
);

# spell node
recipes.remove(<psi:spell_bullet:0>);
recipes.addShaped(<psi:spell_bullet:0>,
	[ [<psi:material:0>, <minecraft:paper>],
	  [null,             <ore:plankWood>  ] ]
);

