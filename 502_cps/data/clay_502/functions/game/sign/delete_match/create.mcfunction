execute store result score # num_502 if entity @a[tag=playing_502,tag=creating_502]
scoreboard players set #delete num_502 0

execute as @e[tag=creating_502,tag=sign_502,tag=delete_match_502] at @s run data modify block ~ ~ ~ {} merge from storage clay_502:storage sign.delete