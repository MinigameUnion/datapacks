#> reversi_201:menu/select
#
# Generated by MCF-Utility
#
# @within function reversi_201:menu/select_handler
tellraw @a [{"text":"Hologram interacted: "},{"score":{"objective":"hologram_id_001","name":"@s"}}]

execute if score @s hologram_id_001 matches 2000 run function reversi_201:menu/action/common.skin
execute if score @s hologram_id_001 matches 2001 run function reversi_201:menu/action/common.main
execute if score @s hologram_id_001 matches 2002 run function reversi_201:menu/action/common.setting

execute if score @s hologram_id_001 matches 2010 run function reversi_201:menu/action/main.start
execute if score @s hologram_id_001 matches 2011 unless score $vsAI ReversiData_201 matches 0 run function reversi_201:menu/action/main.join.black
execute if score @s hologram_id_001 matches 2012 unless score $vsAI ReversiData_201 matches 1 run function reversi_201:menu/action/main.join.white

execute if score @s hologram_id_001 matches 2021 run function reversi_201:menu/action/setting.vs_ai
execute if score @s hologram_id_001 matches 2023 run function reversi_201:menu/action/setting.long_think.l
execute if score @s hologram_id_001 matches 2024 run function reversi_201:menu/action/setting.long_think.s
execute if score @s hologram_id_001 matches 2026 run function reversi_201:menu/action/setting.sheep
execute if score @s hologram_id_001 matches 2028 run function reversi_201:menu/action/setting.isolation
execute if score @s hologram_id_001 matches 2030..2039 run function reversi_201:menu/action/_info

execute if score @s hologram_id_001 matches 2041 run function reversi_201:menu/action/skin.gacha
execute if score @s hologram_id_001 matches 2047 run function reversi_201:menu/action/skin.open
execute if score @s hologram_id_001 matches 2048 run function reversi_201:menu/action/skin.page.prev
execute if score @s hologram_id_001 matches 2049 run function reversi_201:menu/action/skin.page.next
execute if score @s hologram_id_001 matches 2050..2079 run function reversi_201:menu/action/skin.select

execute if score @s hologram_id_001 matches 2098 run function reversi_201:menu/action/_force_end
execute if score @s hologram_id_001 matches 2099 run function reversi_201:menu/action/_area.leave