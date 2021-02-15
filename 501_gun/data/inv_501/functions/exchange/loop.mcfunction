#> inv_501:exchange/loop
# @within
#   inv_501:exchange
#   inv_501:exchange/**

execute store result score #Slot num_501 run data get storage inv_000:api Inventory[0].Slot
execute if score #Slot num_501 = #1 num_501 store result storage inv_000:api Inventory[0].Slot byte 1 run scoreboard players get #2 num_501
execute if score #Slot num_501 = #2 num_501 store result storage inv_000:api Inventory[0].Slot byte 1 run scoreboard players get #1 num_501

data modify storage inv_000:api Inventory append from storage inv_000:api Inventory[0]
data remove storage inv_000:api Inventory[0]

scoreboard players remove #loop num_501 1
execute if score #loop num_501 matches 1.. run function inv_501:exchange/loop