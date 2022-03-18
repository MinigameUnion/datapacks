#> player_000:data/compare/loop
# @within
#   function player_000:data/**
#   function playdata_000:**

data modify storage temp_000:compare save prepend from storage temp_000:loading player.raw[-1]
data remove storage temp_000:loading player.raw[-1]
scoreboard players remove #TEMP num_000 1
execute if score #TEMP num_000 matches 1.. run function player_000:data/compare/loop