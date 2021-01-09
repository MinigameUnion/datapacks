summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}
summon minecraft:armor_stand 4000 67 100 {Invulnerable: 1b, Marker: 1b, Invisible: 1b, Tags: ["taratara_fall_cod_401"]}

spreadplayers 4000 100 1 18 false @e[type=armor_stand,tag=taratara_fall_cod_401]

execute as @e[type=armor_stand,tag=taratara_fall_cod_401] at @s if block ~ ~-1 ~ barrier run summon minecraft:cod ~ ~-2 ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod00_401", "taratara_falling_401"], Health: 0.1f, ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}

#タラMotion変更
execute as @e[type=cod,tag=taratara_cod00_401] store result score @s tara_score1_401 run data get entity @s UUID[0] 0.000000000001
execute as @e[type=cod,tag=taratara_cod00_401] store result entity @s Motion[1] double 1 run scoreboard players operation @s tara_score1_401 %= #10_401 tara_score1_401

#タラAir変更
execute as @e[type=cod,tag=taratara_cod00_401] store result score @s tara_score1_401 run data get entity @s UUID[1] 0.000000000001
execute as @e[type=cod,tag=taratara_cod00_401] run scoreboard players operation @s tara_score1_401 %= #100_401 tara_score1_401
execute as @e[type=cod,tag=taratara_cod00_401] store result entity @s Air short 1 run scoreboard players add @s tara_score1_401 100
execute if score #taratara_select_trident_401 tara_score1_401 matches 5 as @e[type=cod,tag=taratara_cod00_401] store result entity @s Air short 1 run scoreboard players add @s tara_score1_401 100
execute if score #taratara_start_bonus_air_401 tara_score1_401 matches 1 as @e[type=cod,tag=taratara_cod00_401] store result entity @s Air short 1 run scoreboard players add @s tara_score1_401 100


kill @e[type=armor_stand,tag=taratara_fall_cod_401]

scoreboard players set #taratara_fall_cod_401 tara_score1_401 0

tag @e[type=cod,tag=taratara_cod00_401] remove taratara_cod00_401
