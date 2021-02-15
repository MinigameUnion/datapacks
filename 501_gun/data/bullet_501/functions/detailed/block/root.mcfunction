execute if block ~ ~ ~ #minecraft:slabs run function bullet_501:detailed/block/slabs/root
execute if block ~ ~ ~ #minecraft:fences run function bullet_501:detailed/block/fences/root
execute if block ~ ~ ~ #bullet_501:fence_gates run function bullet_501:detailed/block/fence_gates/root
execute if block ~ ~ ~ #minecraft:walls run function #bullet_501:detailed/block/walls
execute if block ~ ~ ~ minecraft:iron_bars run function bullet_501:detailed/block/iron_bars/root
execute if block ~ ~ ~ #bullet_501:glass_pane run function bullet_501:detailed/block/glass_pane
execute if block ~ ~ ~ minecraft:black_stained_glass_pane run function bullet_501:detailed/block/glass_pane
execute if block ~ ~ ~ #minecraft:stairs run function #bullet_501:detailed/block/stairs
execute if block ~ ~ ~ #minecraft:trapdoors run function bullet_501:detailed/block/trapdoors/root
execute if block ~ ~ ~ #minecraft:doors run function #bullet_501:detailed/block/doors
execute if block ~ ~ ~ #minecraft:beds run function #bullet_501:detailed/block/beds
execute if block ~ ~ ~ minecraft:chain run function bullet_501:detailed/block/chain
execute if block ~ ~ ~ #bullet_501:detailed/lower run function #bullet_501:detailed/block/lower
execute if block ~ ~ ~ minecraft:snow run function #bullet_501:detailed/block/snow
execute if block ~ ~ ~ #bullet_501:lantern run function bullet_501:detailed/block/lantern/root
execute if block ~ ~ ~ minecraft:bell run function bullet_501:detailed/block/bell/root
execute if block ~ ~ ~ #bullet_501:chests run function bullet_501:detailed/block/chests/root
execute if block ~ ~ ~ #minecraft:flower_pots run function bullet_501:detailed/block/flower_pot
execute if block ~ ~ ~ minecraft:brewing_stand run function #bullet_501:detailed/block/brewing_stand
execute if block ~ ~ ~ #minecraft:campfires run function bullet_501:detailed/block/campfires/root
execute if block ~ ~ ~ minecraft:grindstone run function bullet_501:detailed/block/grindstone/root
execute if block ~ ~ ~ minecraft:lectern run function #bullet_501:detailed/block/lectern
execute if block ~ ~ ~ #bullet_501:anvil run function bullet_501:detailed/block/anvil/root
execute if block ~ ~ ~ minecraft:hopper run function bullet_501:detailed/block/hopper
execute if block ~ ~ ~ minecraft:composter run function #bullet_501:detailed/block/composter
execute if block ~ ~ ~ minecraft:cauldron run function bullet_501:detailed/block/cauldron
execute if block ~ ~ ~ #bullet_501:piston run function bullet_501:detailed/block/piston/root
execute if block ~ ~ ~ minecraft:piston_head run function bullet_501:detailed/block/piston_head/root

#execute if score #SPEED num_501 matches 1.. if predicate bullet_501:detailed/fluid run function #bullet_501:detailed/fluid/root
execute if predicate bullet_501:detailed/fluid run function #bullet_501:detailed/fluid/root