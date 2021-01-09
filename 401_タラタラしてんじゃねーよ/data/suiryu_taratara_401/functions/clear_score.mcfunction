scoreboard players set #taratara_highest_score_401 tara_score1_401 0
scoreboard players reset @s
data remove block 4000 51 -5 Text3
data remove block 4000 51 -5 Text4

scoreboard players set @s playing_000 401
scoreboard players set @s tara_score1_401 0
scoreboard objectives setdisplay sidebar coin_000

scoreboard players set #cod_fes_401 tara_score1_401 0
scoreboard players set #cod_fes_401 tara_tri1_401 1

schedule clear suiryu_taratara_401:cod_fes_finish

scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data remove entity @s Item.tag.401
data remove storage temp_000:loading game.401

tag @s remove taratara_tri1_401
tag @s remove taratara_tri2_401
tag @s remove taratara_tri3_401
tag @s remove taratara_tri4_401
tag @s remove taratara_tri5_401
tag @s remove taratara_tri6_401
tag @s remove taratara_tri7_401
tag @s remove taratara_tri8_401
tag @s remove taratara_tri9_401
tag @s remove taratara_tri10_401
tag @s remove taratara_tri11_401
tag @s remove taratara_tri12_401
tag @s remove taratara_tri13_401
tag @s remove taratara_cro1_401
tag @s remove taratara_cro2_401
tag @s remove taratara_cro3_401
tag @s remove taratara_cro4_401
tag @s remove taratara_cro5_401
tag @s remove taratara_cro6_401
tag @s remove taratara_cro7_401
tag @s remove taratara_cro8_401
tag @s remove taratara_cro9_401
tag @s remove taratara_cro10_401
tag @s remove taratara_cro11_401
tag @s remove taratara_cro12_401
tag @s remove taratara_cro13_401
