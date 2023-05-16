#> clay_502:game/default/init
# @within
#   function clay_502:game/init

setblock ~ ~ ~ minecraft:structure_block{mode: "LOAD",showboundingbox:0b,name:"clay_502:stage/default/0"} replace
setblock ~ ~1 ~ redstone_block
setblock ~32 ~ ~ minecraft:structure_block{mode: "LOAD",showboundingbox:0b,name:"clay_502:stage/default/1"} replace
setblock ~32 ~1 ~ redstone_block