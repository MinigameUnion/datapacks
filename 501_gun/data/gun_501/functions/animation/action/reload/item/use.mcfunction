execute store result score #Count num_501 store result score # num_501 run data get storage inv_000:api Inventory[0].Count

scoreboard players operation #Count num_501 -= #COUNT num_501
data modify storage gun_501:temp reload.temp append from storage gun_501:temp reload.default
data modify storage gun_501:temp reload.temp[-1] merge from storage inv_000:api Inventory[0]

execute store result storage inv_000:api Inventory[0].Count byte 1 run scoreboard players operation #Count num_501 > #0 num_000
execute store result storage gun_501:temp reload.temp[-1].Count byte 1 run scoreboard players operation # num_501 -= #Count num_501

scoreboard players operation #COUNT num_501 -= # num_501