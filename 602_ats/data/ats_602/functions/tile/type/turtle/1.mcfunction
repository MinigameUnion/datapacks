summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"bold":true,"italic":false,"color":"blue","text":"コガメ (アオウミガメ)"}',Tags:["tile_602","start_602","turtle_baby_602","hit_602"],NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{Count:1b,id:"minecraft:slime_ball",tag:{CustomModelData:602031,mul_602:"x1.8"}}]}
execute as @e[sort=nearest,limit=1,tag=tile_602,tag=!go_602] run function ats_602:tile/type/turtle/2

scoreboard players set @s z1_602 1