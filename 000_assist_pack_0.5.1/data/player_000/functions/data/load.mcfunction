#> player_000:data/load
# @within
#   function player_000:**
#   function playdata_000:**

execute store result score #TEMP num_000 if data storage temp_000:compare save[]
data remove storage temp_000:compare save[]
execute if score #TEMP num_000 matches 1.. run function player_000:data/compare/loop

data modify storage temp_000:loading player.loading set from storage temp_000:loading player.raw[-1]

#ItemStorage Item.tag = temp_000:loading player.loading
execute store result score @s id_000 run data get storage temp_000:loading player.loading.000.id
execute store result score @s coin_000 run data get storage temp_000:loading player.loading.000.coin
function #minecraft:handler/000_load_player
data modify block 0 0 0 Items[0].tag merge from storage temp_000:loading player.loading
function player_000:data/summon

data remove storage temp_000:loading player.loading
data remove storage temp_000:loading player.raw[-1]
data modify storage temp_000:loading player.raw append from storage temp_000:compare save[]