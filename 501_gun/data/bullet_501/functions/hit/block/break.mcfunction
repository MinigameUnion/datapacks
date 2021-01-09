#execute store success score #TEST num_501 run gamerule doTileDrops
#gamerule doTileDrops false
setblock ~ ~ ~ air destroy
#execute if score #TEST num_501 matches 1 run gamerule doTileDrops true
execute positioned ~-1 ~ ~ if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break
execute positioned ~1 ~ ~ if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break
execute positioned ~ ~-1 ~ if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break
execute positioned ~ ~1 ~ if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break
execute positioned ~ ~ ~-1 if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break
execute positioned ~ ~ ~1 if block ~ ~ ~ #bullet_501:breakable run function bullet_501:hit/block/break