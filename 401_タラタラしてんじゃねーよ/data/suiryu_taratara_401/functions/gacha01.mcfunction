execute store result score #taratara_gachaed_401 tara_score1_401 run data get entity @s Item.tag.taratara_gacha_401
execute as @a[tag=taratara_gachaed_401] run scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run function suiryu_taratara_401:gacha1

data remove entity @s Item.tag.taratara_gacha_401


tag @a remove taratara_gachaed_401

data merge entity @s {NoGravity: 1b, Motion: [0.0d, 0.0d, 0.0d]}
