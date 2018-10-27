#

recipes.addShapeless(
	"CTSeaGrassOnAStick",
	<merpig:seagrassonastick>,
	[<minecraft:fishing_rod>, <minecraft:waterlily>]
);

val leather = <minecraft:leather>;
val string = <minecraft:string>;
recipes.addShaped(
	"CTSaddle",
	<minecraft:saddle>,
	[ [ null,    null,    null    ],
	  [ leather, leather, leather ],
	  [ string,  null,    string  ] ]
);
recipes.addShaped(
	"CTSaddle",
	<minecraft:saddle>,
	[ [ leather, leather, leather ],
	  [ string,  null,    string  ],
	  [ null,    null,    null    ] ]
);

##val fishmeal = <giacomos_fishing_net:itemfishmeal>;
#val fish = <minecraft:fish:0>
#	| <minecraft:fish:1>
#	| <minecraft:fish:2>
#	| <minecraft:fish:3>
#	| <advanced-fishing:fish:0>
#	| <advanced-fishing:fish:1>
#	| <advanced-fishing:fish:2>
#	| <advanced-fishing:fish:3>
#	| <advanced-fishing:fish:4>
#	| <advanced-fishing:fish:5>
#	| <advanced-fishing:fish:6>
#	| <advanced-fishing:fish:7>
#	| <advanced-fishing:fish:8>
#	| <advanced-fishing:fish:9>
#	| <advanced-fishing:fish:10>
#	| <advanced-fishing:fish:11>
#	| <advanced-fishing:fish:12>
#	| <advanced-fishing:fish:13>
#	| <advanced-fishing:fish:14>
#	| <advanced-fishing:fish:15>
#	| <advanced-fishing:fish:16>
#	| <advanced-fishing:fish:17>
#	| <advanced-fishing:fish:18>
#	| <advanced-fishing:fish:19>
#	| <advanced-fishing:fish:20>
#	| <advanced-fishing:fish:21>
#	| <advanced-fishing:fish:22>
#	| <advanced-fishing:fish:23>
#	| <advanced-fishing:fish:24>
#	| <advanced-fishing:fish:25>
#	| <advanced-fishing:fish:26>
#	| <advanced-fishing:fish:27>
#	| <advanced-fishing:fish:28>
#	| <advanced-fishing:fish:29>
#	| <advanced-fishing:fish:30>
#	| <advanced-fishing:fish:31>
#	| <advanced-fishing:fish:32>
#	| <advanced-fishing:fish:33>
#	| <advanced-fishing:fish:34>
#	| <advanced-fishing:fish:35>
#	| <advanced-fishing:fish:36>
#	| <advanced-fishing:fish:37>
#	| <advanced-fishing:fish:38>
#	| <advanced-fishing:fish:39>
#	| <advanced-fishing:fish:40>
#	| <advanced-fishing:fish:41>
#	| <advanced-fishing:fish:42>;
#
#recipes.addShapeless(
#	"CTFishmeal",
#	<giacomos_fishing_net:itemfishmeal>,
#	[fish]
#);

