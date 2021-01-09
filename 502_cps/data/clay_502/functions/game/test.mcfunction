#execute as @p at @s run function clay_502:game/test
scoreboard players set @s playing_000 502
tag @s add creating_502
scoreboard players set #GAME num_502 1
function clay_502:game/start