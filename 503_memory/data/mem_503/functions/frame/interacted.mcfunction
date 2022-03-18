#> mem_503:frame/interacted
# @within
#   function mem_503:player/interact

execute store result entity @s ItemRotation byte 1 run scoreboard players get @s num_503
execute unless score @s id_503 matches -2147483648..2147483647 at @s run function mem_503:game/init

execute if entity @s[tag=card_503] at @s run function mem_503:card/interacted