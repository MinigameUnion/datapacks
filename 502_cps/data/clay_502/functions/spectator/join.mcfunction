tp @s ~ ~ ~ ~ ~
tag @s add spectating_502
tag @s add ticking_502
tag @s remove join_spec_502

effect give @s invisibility 1000000 0 true

scoreboard players operation @s type_502 = #ADMIN type_502

tellraw @a[tag=ticking_502] [{"selector":"@s","color":"yellow"},{"text":" が観戦中","color":"gray"}]