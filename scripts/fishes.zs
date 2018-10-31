
# seagrass on a stick
recipes.addShapeless(
	"CTSeaGrassOnAStick",
	<merpig:seagrassonastick>,
	[<minecraft:fishing_rod>, <minecraft:waterlily>]
);

# saddle
val leather = <minecraft:leather>;
val itemstring = <minecraft:string>;
recipes.addShaped(
	"CTSaddle",
	<minecraft:saddle>,
	[ #[ null,    null,    null    ],
	  [ leather, leather, leather ],
	  [ itemstring,  null,    itemstring  ] ]
);

# tweak advanced fishing recipes
recipes.addShapeless(
	"CTJellyfish2Slime",
	<minecraft:slime_ball>,
	[<advanced-fishing:fish:0>]
);
#recipes.removeShapeless(<minecraft:lava_bucket>, [<advanced-fishing:fish:1>, <minecraft:bucket>]);
recipes.removeShaped(<minecraft:lava_bucket>, [[<advanced-fishing:fish:1>, <minecraft:bucket>]]);
recipes.removeShaped(<minecraft:magma_cream>, [[<advanced-fishing:fish:1>]]);
recipes.addShapeless(
	"CTMagmafish2BlazePowder",
	<minecraft:blaze_powder>,
	[<advanced-fishing:fish:1>]
);
recipes.addShapeless(
	"CTPiranha2Blood",
	<forge:bucketfilled>.withTag({FluidName: "lifeessence", Amount: 1000}),
	[<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<advanced-fishing:fish:4>,
		<minecraft:bucket>]
);
recipes.addShapeless(
	"CTGoldenKoi2Gold",
	<minecraft:gold_nugget> * 2,
	[<advanced-fishing:fish:5>]
);
recipes.addShapeless(
	"CTSpecularSnapper2Quicksilver",
	<thaumcraft:quicksilver>,
	[<advanced-fishing:fish:6>]
);
recipes.addShapeless(
	"CTCaveTrout2Coal",
	<minecraft:coal> * 4,
	[<advanced-fishing:fish:7>]
);
recipes.addShapeless(
	"CTSparklingEel2Stardust",
	<astralsorcery:itemcraftingcomponent:2> * 2,
	[<advanced-fishing:fish:18>]
);
recipes.addShapeless(
	"CTAngelfish2Feathers",
	<minecraft:feather> * 4,
	[<advanced-fishing:fish:19>]
);
recipes.removeShaped(<minecraft:gold_nugget> * 2, [[<advanced-fishing:fish:34>]]);
recipes.addShapeless(
	"CTSunfish2Glowstone",
	<minecraft:glowstone_dust> * 2,
	[<advanced-fishing:fish:34>]
);
recipes.addShapeless(
	"CTMagikarp2MagicCrystal",
	<ebwizardry:magic_crystal>,
	[<advanced-fishing:fish:38>]
);
recipes.addShapeless(
	"CTGreenJellyfish2Slime",
	<minecraft:slime_ball> * 2,
	[<advanced-fishing:fish:39>]
);
recipes.addShapeless(
	"CTBonefish2Bone",
	<minecraft:bone>,
	[<advanced-fishing:fish:40>]
);

recipes.addShapeless(
	"CTMagikarp2NightVision",
	<minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
	[<advanced-fishing:fish:38>, <minecraft:potion>.withTag({Potion: "minecraft:water"})]
);
recipes.addShapeless(
	"CTMagikarp2ExtendedNightVision",
	<minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}),
	[<advanced-fishing:fish:38>, <minecraft:redstone>, <minecraft:potion>.withTag({Potion: "minecraft:water"})]
);

# turn the rest of the fish into fishmeal
val minecraftfish = <minecraft:fish:0>
		| <minecraft:fish:1>
		| <minecraft:fish:2>
		| <minecraft:fish:3>;
val otherfish = <advanced-fishing:fish:17>
		| <advanced-fishing:fish:26>
		| <advanced-fishing:fish:41>
		| <advanced-fishing:fish:42>;
recipes.addShapeless(
	"CTFish2Fishmeal",
	<giacomos_fishing_net:itemfishmeal>,
	[otherfish | minecraftfish]
);
recipes.addShapeless(
	"CTBigfish2Fishmeal",
	<giacomos_fishing_net:itemfishmeal> * 3,
	[<advanced-fishing:fish:36> | <advanced-fishing:fish:37>]
);

# use mortar & pestle to crush fish into bonemeal
val smallfish = <minecraft:fish:0>
	| <minecraft:fish:1>
	| <minecraft:fish:2>
	| <minecraft:fish:3>
	| <advanced-fishing:fish:0>
	| <advanced-fishing:fish:1>
	| <advanced-fishing:fish:2>
	| <advanced-fishing:fish:3>
	| <advanced-fishing:fish:4>
	| <advanced-fishing:fish:5>
	| <advanced-fishing:fish:6>
	| <advanced-fishing:fish:7>
	| <advanced-fishing:fish:8>
	| <advanced-fishing:fish:9>
	| <advanced-fishing:fish:10>
	| <advanced-fishing:fish:11>
	| <advanced-fishing:fish:12>
	| <advanced-fishing:fish:13>
	| <advanced-fishing:fish:14>
	| <advanced-fishing:fish:15>
	| <advanced-fishing:fish:16>
	| <advanced-fishing:fish:17>
	| <advanced-fishing:fish:18>
	| <advanced-fishing:fish:19>
	| <advanced-fishing:fish:20>
	| <advanced-fishing:fish:21>
	| <advanced-fishing:fish:22>
	| <advanced-fishing:fish:23>
	| <advanced-fishing:fish:24>
	| <advanced-fishing:fish:25>
	| <advanced-fishing:fish:26>
	| <advanced-fishing:fish:27>
	| <advanced-fishing:fish:28>
	| <advanced-fishing:fish:29>
	| <advanced-fishing:fish:30>
	| <advanced-fishing:fish:31>
	| <advanced-fishing:fish:32>
	| <advanced-fishing:fish:33>
	| <advanced-fishing:fish:34>
	| <advanced-fishing:fish:35>
	| <advanced-fishing:fish:38>
	| <advanced-fishing:fish:39>
	| <advanced-fishing:fish:40>
	| <advanced-fishing:fish:41>
	| <advanced-fishing:fish:42>;
recipes.addShapeless(
	"CTFish2Bonemeal",
	<minecraft:dye:15>,
	[<botania:pestleandmortar>, smallfish]
);
recipes.addShapeless(
	"CTBigfish2Bonemeal",
	<minecraft:dye:15> * 3,
	[<botania:pestleandmortar>,
		<advanced-fishing:fish:36> | <advanced-fishing:fish:37>]
);


##val fishmeal = <giacomos_fishing_net:itemfishmeal>;
#
#recipes.addShapeless(
#	"CTFishmeal",
#	<giacomos_fishing_net:itemfishmeal>,
#	[fish]
#);

