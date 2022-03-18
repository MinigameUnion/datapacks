#> mem_503:card/matched
# @within
#   function mem_503:game/turn_end

scoreboard players operation #admin player_503 = @s player_503
execute as @a[scores={id_503=1..}] if score @s id_503 = # id_503 if score @s player_503 = #admin player_503 run function mem_503:player/get_cards
execute as @e[tag=open_503] if score # id_503 = @s id_503 run kill @s