data modify storage gun_501:temp compare.temp set from storage inv_000:api Inventory[0]
execute store result score #compare num_501 run data modify storage gun_501:temp compare.temp merge from storage gun_501:temp compare.item
execute if score #compare num_501 matches 0 run function gun_501:animation/action/reload/item/use

data modify storage inv_000:api Inventory append from storage inv_000:api Inventory[0]
data remove storage inv_000:api Inventory[0]

scoreboard players remove #loop num_501 1
execute if score #loop num_501 matches 1.. if score #COUNT num_501 matches 1.. run function gun_501:animation/action/reload/item/loop