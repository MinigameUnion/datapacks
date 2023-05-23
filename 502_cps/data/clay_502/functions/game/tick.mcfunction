#> clay_502:game/tick
# @within
#   function clay_502:tick

scoreboard players operation #ADMIN match_id_502 = @s match_id_502
scoreboard players operation #ADMIN type_502 = @s type_502
execute if entity @s[tag=creating_502] run function clay_502:game/tick/creating
execute if entity @s[tag=!creating_502] run function clay_502:game/tick/playing