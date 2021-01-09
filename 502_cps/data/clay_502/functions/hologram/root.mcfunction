#tellraw @s [{"text":"clicked : "},{"score": {"name": "@s","objective": "hologram_id_001"}}]
kill @e[tag=hologram_001,scores={hologram_id_001=5000..5999}]
playsound minecraft:ui.button.click neutral @s ~ ~ ~ 0.5 1 0

execute if score @s hologram_id_001 matches 5020 run function clay_502:hologram/menu/match/plus
execute if score @s hologram_id_001 matches 5021 run function clay_502:hologram/menu/match/minus
execute if score @s hologram_id_001 matches 5022..5023 run function clay_502:hologram/menu/match/check
execute if score @s hologram_id_001 matches 5022 run function clay_502:hologram/menu/match/join
execute if score @s hologram_id_001 matches 5023 run function clay_502:hologram/menu/match/spectate

execute if score @s hologram_id_001 matches ..5998 at @e[type=villager,tag=clay_502,sort=nearest,limit=1,distance=..9] run playsound minecraft:entity.villager.ambient neutral @a ~ ~ ~ 1 1 0
execute if score @s hologram_id_001 matches 5000 run function clay_502:hologram/menu/root
execute if score @s hologram_id_001 matches 5001 run function clay_502:hologram/menu/tutorial/root
execute if score @s hologram_id_001 matches 5002 run function clay_502:hologram/menu/tutorial/check
execute if score @s hologram_id_001 matches 5003 run function clay_502:hologram/menu/tutorial/match
execute if score @s hologram_id_001 matches 5004 unless data storage clay_502:storage match.list[0] run function clay_502:hologram/menu/tutorial/root
execute if score @s hologram_id_001 matches 5004 if data storage clay_502:storage match.list[0] run function clay_502:hologram/menu/tutorial/create

execute if score @s hologram_id_001 matches 5005 run function clay_502:hologram/menu/default/root
execute if score @s hologram_id_001 matches 5006 run function clay_502:hologram/menu/default/check
execute if score @s hologram_id_001 matches 5007 run function clay_502:hologram/menu/default/spectate
execute if score @s hologram_id_001 matches 5008 unless data storage clay_502:storage match.list[0] run function clay_502:hologram/menu/default/root
execute if score @s hologram_id_001 matches 5008 if data storage clay_502:storage match.list[0] run function clay_502:hologram/menu/default/create

#観戦↑
execute if score @s hologram_id_001 matches 5999 run function clay_502:hologram/start

execute if score @s hologram_id_001 matches 5000..5999 if data storage utility_001:hologram_util TextGroup[0] run function utility_001:hologram_util/api/create