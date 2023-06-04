#> clay_502:game/sign/leave_match/clicked
# @within
#   function clay_502:game/tick/playing

scoreboard players operation #ID num_502 = @s id_000
execute as @e[tag=spawned_502,tag=ticking_502] if score @s num_502 = #ID num_502 run function clay_502:game/reset_spawn

tellraw @a[tag=ticking_502] [{"selector":"@s","color":"white"},{"text":" が離脱","color":"gray"}]

data modify storage tool_000:api teleport set from storage clay_502:storage lobby.return
function tool_000:teleport

function clay_502:player/leave

function clay_502:game/sign/delete_match/restore

execute unless entity @a[tag=playing_502,tag=ticking_502] as @e[sort=nearest,tag=match_admin_502,distance=..64] if score @s match_id_502 = #ADMIN match_id_502 run tag @s add delete_502