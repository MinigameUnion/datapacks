#> inv_000:restore/separation
# @within
#   function inv_000:restore
#   function inv_000:restore/separation

execute store result score #Slot num_000 run data get storage inv_000:temp temp[0].Slot

execute if score #Slot num_000 matches 0..26 run data modify storage inv_000:temp Inventory[0] append from storage inv_000:temp temp[0]

execute if score #Slot num_000 matches 27..35 run data modify storage inv_000:temp Inventory[1] append from storage inv_000:temp temp[0]
execute if score #Slot num_000 matches 27..35 store result storage inv_000:temp Inventory[1][-1].Slot byte 1 run scoreboard players remove #Slot num_000 27

execute if score #Slot num_000 matches 100..103 run data modify storage inv_000:temp Inventory[2] append from storage inv_000:temp temp[0]
execute if score #Slot num_000 matches 100..103 store result storage inv_000:temp Inventory[2][-1].Slot byte 1 run scoreboard players remove #Slot num_000 100

execute if score #Slot num_000 matches -106 run data modify storage inv_000:temp Inventory[3] append from storage inv_000:temp temp[0]
execute if score #Slot num_000 matches -106 store result storage inv_000:temp Inventory[3][-1].Slot byte 1 run scoreboard players add #Slot num_000 106

data remove storage inv_000:temp temp[0]

execute if data storage inv_000:temp temp[0] run function inv_000:restore/separation