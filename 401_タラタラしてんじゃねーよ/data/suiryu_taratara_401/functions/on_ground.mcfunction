
tag @s remove taratara_falling_401
execute store result score @s tara_score1_401 run data get entity @s Air
execute if score @s tara_score1_401 matches ..99 run scoreboard players set @s tara_score1_401 100
execute store result entity @s Air short 1 run scoreboard players remove @s tara_score1_401 100
