#execute store result score #TEST num_501 run gamerule doTileDrops
#gamerule doTileDrops false
execute if score #BREAKABLE num_501 matches 1 run setblock ~ ~ ~ air destroy
#execute if score #TEST num_501 matches 1 run gamerule doTileDrops true

scoreboard players operation @s speed_501 *= #BREAKABLE ope_501
scoreboard players operation @s speed_501 /= #100 num_000
scoreboard players operation @s speed_501 > #1 num_000

#say breakable