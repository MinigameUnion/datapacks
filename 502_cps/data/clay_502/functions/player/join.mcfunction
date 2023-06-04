#> clay_502:player/join
# @within
#   function clay_502:game/tick/playing

tp @s ~ ~ ~ ~ ~
tag @s add playing_502
tag @s add ticking_502
tag @s remove join_player_502
function gun_501:join
scoreboard players operation @s type_502 = #ADMIN type_502

scoreboard players operation @e[tag=ticking_502,tag=spawn_player_502,tag=personal_502,sort=nearest,limit=1,distance=..0] num_502 = @s id_000
tag @e[tag=ticking_502,tag=spawn_player_502,tag=personal_502,sort=nearest,limit=1,distance=..0] add spawned_502

execute if score @s type_502 matches 0 run function clay_502:game/tutorial/join
execute if score @s type_502 matches 2 run function clay_502:game/quickshot/join

function clay_502:game/sign/delete_match/restore