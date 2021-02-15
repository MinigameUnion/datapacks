execute store result score # num_502 if entity @a[tag=playing_502,tag=ticking_502]
execute store result score #delete num_502 if entity @a[tag=playing_502,tag=ticking_502,tag=delete_502]

execute as @e[tag=ticking_502,tag=sign_502,tag=delete_match_502] at @s run data modify block ~ ~ ~ {} merge from storage clay_502:storage sign.delete