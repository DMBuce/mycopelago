
val prisshard = <minecraft:prismarine_shard>;
val prisblock = <minecraft:prismarine:1>;
val anypetal = <ore:petalWhite>
	| <ore:petalOrange>
	| <ore:petalMagenta>
	| <ore:petalLightBlue>
	| <ore:petalYellow>
	| <ore:petalLime>
	| <ore:petalPink>
	| <ore:petalGray>
	| <ore:petalLightGray>
	| <ore:petalLightBlue>
	| <ore:petalPurple>
	| <ore:petalBlue>
	| <ore:petalBrown>
	| <ore:petalGreen>
	| <ore:petalRed>
	| <ore:petalBlack>;

# prismarine apothecary
recipes.remove(<botania:altar:7>, false);
recipes.addShaped(
	"CTPrimarineApothecary",
	<botania:altar:7>,
	[ [ prisshard, anypetal,  prisshard ],
	  [ null,      prisblock, null      ],
	  [ prisblock, prisblock, prisblock ] ]
);

