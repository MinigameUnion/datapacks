#> mem_503:game/round_end
# @within
#   function mem_503:card/interacted

scoreboard players operation @s num_503 = @s player_503
scoreboard players remove @s num_503 1
scoreboard players set @s player_503 0
scoreboard players set #player num_503 -1