function ats_602:reset/players
scoreboard players reset @s playing_000
tag @s remove in_602
tag @s remove join_area_602
clear @s minecraft:paper{item602:1b}
teleport @s 0 5 0
function player_000:leave_game