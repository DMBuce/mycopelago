#!/bin/bash
# prints a bunch of scavenge block_pool entries based on a template

template="${0%/*}/fish.template"

data=(
	'0 1 minecraft:slime_ball'
	'1 1 minecraft:blaze_powder , "amount": 2'
	'2 1 minecraft:clay_ball , "amount": 4'
	'3 2 minecraft:ice'
	'4 1 giacomos_fishing_net:itemfishmeal'
	'5 1 minecraft:gold_nugget , "amount": 2'
	'6 1 thaumcraft:quicksilver'
	'7 1 minecraft:coal , "amount": 4'
	'8 4 minecraft:obsidian'
	'9 1 minecraft:netherrack'
	'10 1 minecraft:quartz , "amount": 4'
	'11 1 minecraft:glowstone_dust , "amount": 2'
	'12 1 minecraft:blaze_rod'
	'13 1 minecraft:end_stone'
	'14 1 minecraft:ender_pearl'
	'15 1 minecraft:chorus_fruit'
	'16 1 minecraft:gunpowder , "amount": 3'
	'17 1 giacomos_fishing_net:itemfishmeal'
	'18 1 astralsorcery:itemcraftingcomponent , "meta": 2, "amount": 2'
	'19 1 minecraft:feather , "amount": 4'
	'20 1 minecraft:prismarine_crystals , "amount": 2'
	'21 4 minecraft:sponge'
	'22 1 minecraft:snowball , "amount": 4'
	'23 1 minecraft:dye , "meta": 0, "amount": 5'
	'24 2 minecraft:soul_sand'
	'25 1 minecraft:sand'
	'26 1 giacomos_fishing_net:itemfishmeal'
	'27 1 minecraft:red_mushroom , "amount": 5'
	'28 1 minecraft:brown_mushroom , "amount": 5'
	'29 1 minecraft:nether_wart , "amount": 2'
	'30 1 minecraft:waterlily'
	'31 1 minecraft:dye , "meta": 4, "amount": 5'
	'32 1 minecraft:redstone , "amount": 5'
	'33 1 minecraft:prismarine_shard , "amount": 4'
	'34 1 minecraft:glowstone_dust , "amount": 2'
	'35 2 minecraft:packed_ice'
	'36 1 giacomos_fishing_net:itemfishmeal , "amount": 3'
	'37 1 giacomos_fishing_net:itemfishmeal , "amount": 3'
	'38 1 ebwizardry:magic_crystal'
	'39 1 minecraft:slime_ball , "amount": 2'
	'40 1 minecraft:bone'
	'minecraft:fish:0 1 giacomos_fishing_net:itemfishmeal'
	'minecraft:fish:1 1 giacomos_fishing_net:itemfishmeal'
	'minecraft:fish:2 1 giacomos_fishing_net:itemfishmeal'
	'minecraft:fish:3 1 giacomos_fishing_net:itemfishmeal'
)

for d in "${data[@]}"; do
	fishnum="$(cut -d' ' -f1 <<< "$d")"
	fishamt="$(cut -d' ' -f2 <<< "$d")"
	fishoutput="$(cut -d' ' -f3 <<< "$d")"
	fishextra="$(cut -d' ' -f4- <<< "$d")"

	sed "
		s/{{fishnum}}/$fishnum/g
		s/{{fishamt}}/$fishamt/g
		s/{{fishoutput}}/$fishoutput/g
		s/{{fishextra}}/$fishextra/g
	" "$template"
done

