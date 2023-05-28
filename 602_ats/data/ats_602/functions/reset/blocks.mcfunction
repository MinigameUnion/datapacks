setblock 6061 81 13 minecraft:lever[face=wall,facing=north]
setblock 6060 81 13 minecraft:lever[face=wall,facing=north]
setblock 6058 81 13 minecraft:dark_oak_button[face=wall,facing=north] keep
fill 6030 80 15 6033 80 15 minecraft:air
fill 6029 81 15 6034 82 15 minecraft:air
fill 6016 64 16 6047 66 47 minecraft:air replace minecraft:redstone_block
fill 6016 63 16 6047 63 47 minecraft:grass_block
execute if score $602 chaos_602 matches 1 run setblock 6059 81 13 minecraft:lever[face=wall,facing=north]
