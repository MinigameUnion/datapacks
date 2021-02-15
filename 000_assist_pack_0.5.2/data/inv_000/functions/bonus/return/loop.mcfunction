#> inv_000:bonus/return/loop
# @within
#   function inv_000:bonus/return
#   function inv_000:bonus/return/loop

data modify storage inv_000:temp compare.temp set from storage inv_000:api Inventory[0]
execute store result score #list num_000 if data storage inv_000:temp compare.temp.tag.bonus.in[]
execute store result score #compare num_000 run data modify storage inv_000:temp compare.temp.tag.bonus.in[] set from storage player_000:temp playing_000

execute unless score #compare num_000 = #list num_000 run data modify storage inv_000:api Inventory append from storage inv_000:api Inventory[0]

execute if score #compare num_000 = #list num_000 run function inv_000:bonus/return/to_ender

data remove storage inv_000:api Inventory[0]

scoreboard players remove # num_000 1
execute if score # num_000 matches 1.. run function inv_000:bonus/return/loop