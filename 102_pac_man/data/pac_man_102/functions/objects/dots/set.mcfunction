#エサの設置

#info
# as,at:free

#削除
kill @e[tag=Dot_102]

#ストラクチャの設置
setblock 983 92 986 minecraft:structure_block[mode=load]{mode:"LOAD",posX:1,posY:-1,posZ:1,sizeX:31,sizeY:2,sizeZ:28,integrity:1.0f,name:"pac_man_102:dots"}
setblock 983 93 986 redstone_block
fill 983 92 986 983 93 986 air

#スコアの設定
scoreboard players set #pellet_102 _Count_102 244