scoreboard players operation #ID num_502 = @s id_000
execute as @e[tag=spawned_502,tag=ticking_502] if score @s num_502 = #ID num_502 run function clay_502:game/reset_spawn

tellraw @a[tag=ticking_502] [{"selector":"@s","color":"white"},{"text":" が離脱","color":"gray"}]

data modify entity 0-0-1f6-0-0 {} merge from storage clay_502:storage lobby.return
tp @s 0-0-1f6-0-0
data modify entity 0-0-1f6-0-0 {} merge from storage clay_502:storage lobby.admin

function clay_502:player/leave

function clay_502:game/sign/delete_match/restore

execute unless entity @a[tag=playing_502,tag=ticking_502] as @e[sort=nearest,tag=match_admin_502,distance=..64] if score @s match_id_502 = #ADMIN match_id_502 run tag @s add delete_502