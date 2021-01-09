data modify entity @s Item.tag.401.weapon.rare.tri1.count set value 10
data modify entity @s Item.tag.401.weapon.rare.tri2.count set value 10
data modify entity @s Item.tag.401.weapon.rare.tri3.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.tri4.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.tri5.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.tri6.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.tri7.count set value 10
data modify entity @s Item.tag.401.weapon.legend.tri8.count set value 10
data modify entity @s Item.tag.401.weapon.legend.tri9.count set value 10
data modify entity @s Item.tag.401.weapon.legend.tri10.count set value 10
data modify entity @s Item.tag.401.weapon.legend.tri11.count set value 10
data modify entity @s Item.tag.401.weapon.dream.tri12.count set value 10
data modify entity @s Item.tag.401.weapon.dream.tri13.count set value 10

data modify entity @s Item.tag.401.weapon.rare.cro1.count set value 10
data modify entity @s Item.tag.401.weapon.rare.cro2.count set value 10
data modify entity @s Item.tag.401.weapon.rare.cro3.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.cro4.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.cro5.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.cro6.count set value 10
data modify entity @s Item.tag.401.weapon.super_rare.cro7.count set value 10
data modify entity @s Item.tag.401.weapon.legend.cro8.count set value 10
data modify entity @s Item.tag.401.weapon.legend.cro9.count set value 10
data modify entity @s Item.tag.401.weapon.legend.cro10.count set value 10
data modify entity @s Item.tag.401.weapon.legend.cro11.count set value 10
data modify entity @s Item.tag.401.weapon.dream.cro12.count set value 10
data modify entity @s Item.tag.401.weapon.dream.cro13.count set value 10

tag @s add taratara_tri1_401
tag @s add taratara_tri2_401
tag @s add taratara_tri3_401
tag @s add taratara_tri4_401
tag @s add taratara_tri5_401
tag @s add taratara_tri6_401
tag @s add taratara_tri7_401
tag @s add taratara_tri8_401
tag @s add taratara_tri9_401
tag @s add taratara_tri10_401
tag @s add taratara_tri11_401
tag @s add taratara_tri12_401
tag @s add taratara_tri13_401
tag @s add taratara_cro1_401
tag @s add taratara_cro2_401
tag @s add taratara_cro3_401
tag @s add taratara_cro4_401
tag @s add taratara_cro5_401
tag @s add taratara_cro6_401
tag @s add taratara_cro7_401
tag @s add taratara_cro8_401
tag @s add taratara_cro9_401
tag @s add taratara_cro10_401
tag @s add taratara_cro11_401
tag @s add taratara_cro12_401
tag @s add taratara_cro13_401

execute store result score @s tara_score1_401 run data get entity @s Item.tag.401.weapon.rare
execute store result score @s tara_score2_401 run data get entity @s Item.tag.401.weapon.super_rare
scoreboard players operation @s tara_score2_401 *= #3_401 tara_score1_401
scoreboard players operation @s tara_score1_401 += @s tara_score2_401
execute store result score @s tara_score2_401 run data get entity @s Item.tag.401.weapon.legend
scoreboard players operation @s tara_score2_401 *= #8_401 tara_score1_401
scoreboard players operation @s tara_score1_401 += @s tara_score2_401
execute store result score @s tara_score2_401 run data get entity @s Item.tag.401.weapon.dream
scoreboard players operation @s tara_score2_401 *= #14_401 tara_score1_401
execute store result entity @s Item.tag.401.weapon.get_bonus int 1 run scoreboard players operation @s tara_score1_401 += @s tara_score2_401


function suiryu_taratara_401:score_load
