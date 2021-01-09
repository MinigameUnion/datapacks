execute store result score #CHECK match_id_502 run data get storage clay_502:storage match.display.list[0].Slot
execute as @e[tag=match_admin_502] if score @s match_id_502 = #CHECK match_id_502 run scoreboard players set #CHECK match_id_502 -1

execute unless score #CHECK match_id_502 matches -1 store result score @s hologram_id_001 run data get storage clay_502:storage match.display.return