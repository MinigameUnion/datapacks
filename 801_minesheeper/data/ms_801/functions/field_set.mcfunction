#フィールド作成
setblock 7999 0 0 bedrock
setblock 8000 0 0 oak_wall_sign[facing=east]

fill 7970 9 -30 8029 9 29 grass_block
fill 7974 10 -26 8025 19 25 barrier outline
fill 7974 19 -26 8025 29 25 barrier outline
fill 7975 29 -25 8024 29 24 air
fill 7975 10 -25 8024 10 24 oak_fence
fill 7976 10 -24 8023 10 23 air

setblock 7976 13 32 minecraft:structure_block[mode=load]{posX:0,posY:1,posZ:0,name:"ms_801:logo",mode:"LOAD"}
setblock 7976 12 32 redstone_block
setblock 7976 12 32 air
setblock 7976 12 32 redstone_block
setblock 7976 12 32 air
setblock 7976 13 32 air

setblock 7987 12 -33 minecraft:structure_block[mode=load]{posX:0,posY:1,posZ:0,name:"ms_801:num",mode:"LOAD"}
setblock 7987 11 -33 redstone_block
setblock 7987 11 -33 air
setblock 7987 11 -33 redstone_block
setblock 7987 11 -33 air
setblock 7987 12 -33 air