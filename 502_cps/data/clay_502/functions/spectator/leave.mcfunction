#execute at 1f6-0-0-0-0 run function clay_502:spectator/leave

data modify entity 1f6-0-0-0-0 Pos set from storage clay_502:storage lobby.spawn.Pos
data modify entity 1f6-0-0-0-0 Rotation set from storage clay_502:storage lobby.spawn.Rotation
tp @s 1f6-0-0-0-0
tp 1f6-0-0-0-0 ~ ~ ~ ~ ~


scoreboard players reset @s match_id_502
scoreboard players reset @s type_502
tag @s remove spectating_502
tag @s remove ticking_502