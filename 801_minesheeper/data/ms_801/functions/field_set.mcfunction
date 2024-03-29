#> ms_801:field_set
# フィールド作成

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

setblock 7999 10 -24 minecraft:dark_oak_wall_sign[facing=south]{Text1:'{"text":"ゲーム退出","color":"dark_green","bold":true,"clickEvent":{"action":"run_command","value":"function ms_801:leave"}}',GlowingText:1b}
setblock 8000 10 -24 minecraft:dark_oak_wall_sign[facing=south]{Text1:'{"text":"初期化","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"function ms_801:init_sign"}}',GlowingText:1b}