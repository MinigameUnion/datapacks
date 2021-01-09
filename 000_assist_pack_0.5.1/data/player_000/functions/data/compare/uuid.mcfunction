#> player_000:data/compare/uuid
# @within
#   function player_000:data/**
#   function playdata_000:**

execute store success score #TEMP num_000 run data modify storage temp_000:compare list[-1] set from storage temp_000:compare string
execute if score #TEMP num_000 matches 1 run data remove storage temp_000:compare list[-1]
execute if score #TEMP num_000 matches 1 run data modify storage temp_000:compare save prepend from storage temp_000:loading player.uuid[-1]
execute if score #TEMP num_000 matches 1 run data remove storage temp_000:loading player.uuid[-1]
execute if score #TEMP num_000 matches 1 if data storage temp_000:compare list[0] run function player_000:data/compare/uuid