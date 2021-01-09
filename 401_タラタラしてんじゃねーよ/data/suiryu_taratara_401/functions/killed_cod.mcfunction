#残りAirをスコアに加算
execute if data entity @s Item.tag{taratara_cod_air_401: 100} positioned as @s run particle minecraft:totem_of_undying ~ ~ ~ 0 0 0 1 30 normal
execute if data entity @s Item.tag{taratara_cod_air_401: 100} positioned as @s run playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.5 2
execute if data entity @s Item.tag{taratara_cod_air_401: 1000} positioned as @s run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 30 normal
execute if data entity @s Item.tag{taratara_cod_air_401: 1000} positioned as @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.5 1.8

execute if score #taratara_fever_401 tara_score1_401 matches 0 if data entity @s Item.tag{taratara_cod_air_401: 10} store result score @s tara_score1_401 run data get entity @s Item.tag.Point_401.[] 1
execute if score #taratara_fever_401 tara_score1_401 matches 0 if data entity @s Item.tag{taratara_cod_air_401: 100} store result score @s tara_score1_401 run data get entity @s Item.tag.Point_401.[] 10
execute if score #taratara_fever_401 tara_score1_401 matches 0 if data entity @s Item.tag{taratara_cod_air_401: 1000} store result score @s tara_score1_401 run data get entity @s Item.tag.Point_401.[] 100
execute if score #taratara_fever_401 tara_score1_401 matches 1 if data entity @s Item.tag{taratara_cod_air_401: 10} store result score @s tara_score1_401 run data get entity @s Item.tag.Point_401.[] 10
execute if score #taratara_fever_401 tara_score1_401 matches 1 if data entity @s Item.tag{taratara_cod_air_401: 100} store result score @s tara_score1_401 run data get entity @s Item.tag.Point_401.[] 100
execute if score #taratara_fever_401 tara_score1_401 matches 1 if data entity @s Item.tag{taratara_cod_air_401: 1000} store result score @s tara_score1_401 run data get entity @s Item.tag.Point_401.[] 1000
execute if score @s tara_score1_401 matches 1.. run scoreboard players operation #taratara_gaming_score_401 tara_score1_401 += @s tara_score1_401
execute if score @s tara_score1_401 matches ..-1 run scoreboard players operation #taratara_gaming_score_401 tara_score1_401 -= @s tara_score1_401
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 2 2

#kill数をスコアに加算
scoreboard players operation #taratara_gaming_score_401 tara_score1_401 += #taratara_kill_count_401 tara_score1_401
execute if score #taratara_select_trident_401 tara_score1_401 matches 2 if score #taratara_fever_401 tara_score1_401 matches 1 run scoreboard players add #taratara_kill_count_401 tara_score1_401 39
execute if score #taratara_select_trident_401 tara_score1_401 matches 8 run scoreboard players add #taratara_kill_count_401 tara_score1_401 99
execute if score #taratara_start_bonus_kill_count_401 tara_score1_401 matches 1 run scoreboard players add #taratara_kill_count_401 tara_score1_401 100
scoreboard players add #taratara_kill_count_401 tara_score1_401 1

execute if score #taratara_gaming_score_401 tara_score1_401 matches 1000000000.. run scoreboard players set #taratara_gaming_score_401 tara_score1_401 999999999

#タラ出現(3～8)
execute store result score #taratara_codlimit_401 tara_score1_401 run execute if entity @e[type=cod,tag=taratara_cod_401]
scoreboard players set #RANGE num_000 6
function tool_000:random
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [0f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [0f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [0f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 if score #RANDOM num_000 matches 1..5 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [60f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 if score #RANDOM num_000 matches 2..5 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [120f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 if score #RANDOM num_000 matches 3..5 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [180f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 if score #RANDOM num_000 matches 4..5 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [240f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_codlimit_401 tara_score1_401 matches ..50 if score #RANDOM num_000 matches 5 run summon minecraft:cod ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:cod", Tags: ["taratara_cod_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [300f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}

#鮭出現(0～5)
execute if score #taratara_fever_401 tara_score1_401 matches 0 run scoreboard players operation #RANGE num_000 = #taratara_gaming_score_401 tara_score1_401
execute if score #taratara_fever_401 tara_score1_401 matches 0 run function tool_000:random
execute store result score #taratara_salmonlimit_401 tara_score1_401 run execute if entity @e[type=salmon,tag=taratara_salmon_401]
execute if score #taratara_salmonlimit_401 tara_score1_401 matches ..40 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 10000.. run summon minecraft:salmon ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:salmon", Tags: ["taratara_salmon_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [0f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_salmonlimit_401 tara_score1_401 matches ..40 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 20000.. run summon minecraft:salmon ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:salmon", Tags: ["taratara_salmon_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [72f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_salmonlimit_401 tara_score1_401 matches ..40 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 30000.. run summon minecraft:salmon ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:salmon", Tags: ["taratara_salmon_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [144f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_salmonlimit_401 tara_score1_401 matches ..40 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 40000.. run summon minecraft:salmon ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:salmon", Tags: ["taratara_salmon_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [216f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}
execute if score #taratara_salmonlimit_401 tara_score1_401 matches ..40 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 50000.. run summon minecraft:salmon ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:salmon", Tags: ["taratara_salmon_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [288f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}]}

#熱帯魚出現(0～5)
execute if score #taratara_fever_401 tara_score1_401 matches 0 run scoreboard players operation #RANGE num_000 = #taratara_gaming_score_401 tara_score1_401
execute if score #taratara_fever_401 tara_score1_401 matches 0 run function tool_000:random
execute store result score #taratara_tropicallimit_401 tara_score1_401 run execute if entity @e[type=tropical_fish,tag=taratara_tropical_fish_401]
execute if score #taratara_tropicallimit_401 tara_score1_401 matches ..30 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 25000.. run summon minecraft:tropical_fish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:tropical_fish", Tags: ["taratara_tropical_fish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [90f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], Variant: 0}
execute if score #taratara_tropicallimit_401 tara_score1_401 matches ..30 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 50000.. run summon minecraft:tropical_fish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:tropical_fish", Tags: ["taratara_tropical_fish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [162f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], Variant: 0}
execute if score #taratara_tropicallimit_401 tara_score1_401 matches ..30 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 75000.. run summon minecraft:tropical_fish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:tropical_fish", Tags: ["taratara_tropical_fish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [234f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], Variant: 0}
execute if score #taratara_tropicallimit_401 tara_score1_401 matches ..30 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 100000.. run summon minecraft:tropical_fish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:tropical_fish", Tags: ["taratara_tropical_fish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [306f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], Variant: 0}
execute if score #taratara_tropicallimit_401 tara_score1_401 matches ..30 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 125000.. run summon minecraft:tropical_fish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:tropical_fish", Tags: ["taratara_tropical_fish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [18f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], Variant: 0}
execute if score #taratara_fever_401 tara_score1_401 matches 0 as @e[type=tropical_fish,tag=taratara_cod0_401,limit=1] run function suiryu_taratara_401:tropical_fish_variant

#フグ出現(0～5)
execute if score #taratara_fever_401 tara_score1_401 matches 0 run scoreboard players operation #RANGE num_000 = #taratara_gaming_score_401 tara_score1_401
execute if score #taratara_fever_401 tara_score1_401 matches 0 run function tool_000:random
execute store result score #taratara_pufferlimit_401 tara_score1_401 run execute if entity @e[type=pufferfish,tag=taratara_pufferfish_401]
execute if score #taratara_pufferlimit_401 tara_score1_401 matches ..20 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 62500.. run summon minecraft:pufferfish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:pufferfish", Tags: ["taratara_pufferfish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [120f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], PuffState: 2}
execute if score #taratara_pufferlimit_401 tara_score1_401 matches ..20 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 125000.. run summon minecraft:pufferfish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:pufferfish", Tags: ["taratara_pufferfish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [192f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], PuffState: 2}
execute if score #taratara_pufferlimit_401 tara_score1_401 matches ..20 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 187500.. run summon minecraft:pufferfish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:pufferfish", Tags: ["taratara_pufferfish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [264f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], PuffState: 2}
execute if score #taratara_pufferlimit_401 tara_score1_401 matches ..20 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 250000.. run summon minecraft:pufferfish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:pufferfish", Tags: ["taratara_pufferfish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [336f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], PuffState: 2}
execute if score #taratara_pufferlimit_401 tara_score1_401 matches ..20 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 312500.. run summon minecraft:pufferfish ~ ~ ~ {DeathLootTable: "suiryu_taratara_401:pufferfish", Tags: ["taratara_pufferfish_401", "taratara_cod0_401", "taratara_falling_401"], Health: 0.1f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [48f, 0f], ActiveEffects: [{Id: 28b, Amplifier: 99b, Duration: 20000000, ShowParticles: 0b}], PuffState: 2}

#イカ出現(0～5)
execute if score #taratara_fever_401 tara_score1_401 matches 0 run scoreboard players operation #RANGE num_000 = #taratara_gaming_score_401 tara_score1_401
execute if score #taratara_fever_401 tara_score1_401 matches 0 run function tool_000:random
execute store result score #taratara_squidlimit_401 tara_score1_401 run execute if entity @e[type=squid,tag=taratara_squid_401]
execute if score #taratara_squidlimit_401 tara_score1_401 matches ..5 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 100000000.. run summon minecraft:squid ~ ~3 ~ {DeathLootTable: "suiryu_taratara_401:squid", Tags: ["taratara_squid_401", "taratara_falling_401"], Health: 10f, Motion: [5.0d, 1.0d, 0.0d], Rotation: [120f, 0f], ActiveEffects: [{Id: 10b, Amplifier: 99b, Duration: 600, ShowParticles: 0b}]}
execute if score #taratara_squidlimit_401 tara_score1_401 matches ..5 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 200000000.. run summon minecraft:squid ~ ~3 ~ {DeathLootTable: "suiryu_taratara_401:squid", Tags: ["taratara_squid_401", "taratara_falling_401"], Health: 10f, Motion: [0.0d, 1.0d, 5.0d], Rotation: [192f, 0f], ActiveEffects: [{Id: 10b, Amplifier: 99b, Duration: 600, ShowParticles: 0b}]}
execute if score #taratara_squidlimit_401 tara_score1_401 matches ..5 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 300000000.. run summon minecraft:squid ~ ~3 ~ {DeathLootTable: "suiryu_taratara_401:squid", Tags: ["taratara_squid_401", "taratara_falling_401"], Health: 10f, Motion: [-5.0d, 1.0d, 0.0d], Rotation: [264f, 0f], ActiveEffects: [{Id: 10b, Amplifier: 99b, Duration: 600, ShowParticles: 0b}]}
execute if score #taratara_squidlimit_401 tara_score1_401 matches ..5 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 500000000.. run summon minecraft:squid ~ ~3 ~ {DeathLootTable: "suiryu_taratara_401:squid", Tags: ["taratara_squid_401", "taratara_falling_401"], Health: 10f, Motion: [0.0d, 1.0d, -5.0d], Rotation: [336f, 0f], ActiveEffects: [{Id: 10b, Amplifier: 99b, Duration: 600, ShowParticles: 0b}]}
execute if score #taratara_squidlimit_401 tara_score1_401 matches ..5 if score #taratara_fever_401 tara_score1_401 matches 0 if score #RANDOM num_000 matches 800000000.. run summon minecraft:squid ~ ~3 ~ {DeathLootTable: "suiryu_taratara_401:squid", Tags: ["taratara_squid_401", "taratara_falling_401"], Health: 10f, Motion: [0.0d, 1.0d, 0.0d], Rotation: [48f, 0f], ActiveEffects: [{Id: 10b, Amplifier: 99b, Duration: 600, ShowParticles: 0b}]}


#Motion変更
execute as @e[tag=taratara_cod0_401] store result score @s tara_score1_401 run data get entity @s UUID[0] 0.000000000001
execute as @e[tag=taratara_cod0_401] run scoreboard players operation @s tara_score1_401 %= #20_401 tara_score1_401
execute as @e[tag=taratara_cod0_401] store result entity @s Motion[0] double 0.08 run scoreboard players operation @s tara_score1_401 -= #10_401 tara_score1_401

execute as @e[tag=taratara_cod0_401] store result score @s tara_score1_401 run data get entity @s UUID[0] 0.000000000003
execute as @e[tag=taratara_cod0_401] store result entity @s Motion[1] double 1 run scoreboard players operation @s tara_score1_401 %= #10_401 tara_score1_401

execute as @e[tag=taratara_cod0_401] store result score @s tara_score1_401 run data get entity @s UUID[1] 0.000000000001
execute as @e[tag=taratara_cod0_401] run scoreboard players operation @s tara_score1_401 %= #20_401 tara_score1_401
execute as @e[tag=taratara_cod0_401] store result entity @s Motion[2] double 0.08 run scoreboard players operation @s tara_score1_401 -= #10_401 tara_score1_401

#Air変更
execute as @e[tag=taratara_cod0_401] store result score @s tara_score1_401 run data get entity @s UUID[1] 0.000000000003
execute as @e[tag=taratara_cod0_401] run scoreboard players operation @s tara_score1_401 %= #100_401 tara_score1_401
execute as @e[tag=taratara_cod0_401] store result entity @s Air short 1 run scoreboard players add @s tara_score1_401 100
execute if score #taratara_select_trident_401 tara_score1_401 matches 5 as @e[tag=taratara_cod0_401] store result entity @s Air short 1 run scoreboard players add @s tara_score1_401 100
execute if score #taratara_start_bonus_air_401 tara_score1_401 matches 1 as @e[tag=taratara_cod0_401] store result entity @s Air short 1 run scoreboard players add @s tara_score1_401 100


tag @e[tag=taratara_cod0_401] remove taratara_cod0_401

#ボーナスミニ
execute if score #taratara_fever_401 tara_score1_401 matches 1 unless score #taratara_select_crossbow_401 tara_score1_401 matches 3 unless score #taratara_select_trident_401 tara_score1_401 matches 11 run scoreboard players set #taratara_bonus_coin_401 tara_score1_401 5
execute if score #taratara_fever_401 tara_score1_401 matches 1 if score #taratara_select_trident_401 tara_score1_401 matches 11..12 unless score #taratara_select_crossbow_401 tara_score1_401 matches 3 run scoreboard players set #taratara_bonus_coin_401 tara_score1_401 10
execute if score #taratara_fever_401 tara_score1_401 matches 1 if score #taratara_start_bonus_mini_401 tara_score1_401 matches 1 unless score #taratara_select_crossbow_401 tara_score1_401 matches 3 run scoreboard players operation #taratara_bonus_coin_401 tara_score1_401 += #taratara_bonus_coin_401 tara_score1_401
execute if score #taratara_fever_401 tara_score1_401 matches 1 unless score #taratara_select_crossbow_401 tara_score1_401 matches 3 run scoreboard players operation @a[scores={tara_score1_401=1}] add_coin_000 = #taratara_bonus_coin_401 tara_score1_401

#FEVERゲージ
execute if score #taratara_fever_401 tara_score1_401 matches 0 store result bossbar minecraft:taratara_fever_401 value run scoreboard players add #taratara_fever0_401 tara_score1_401 10
execute if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_select_trident_401 tara_score1_401 matches 10 store result bossbar minecraft:taratara_fever_401 value run scoreboard players add #taratara_fever0_401 tara_score1_401 10
execute if score #taratara_fever_401 tara_score1_401 matches 1 if score #taratara_select_crossbow_401 tara_score1_401 matches 12 store result bossbar minecraft:taratara_fever_401 value run scoreboard players add #taratara_fever0_401 tara_score1_401 10
execute if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_fever0_401 tara_score1_401 matches 600.. run scoreboard players set #taratara_fever_401 tara_score1_401 1

#タラ供給
scoreboard players add #taratara_fall_cod_401 tara_score1_401 1
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches ..10000 if score #taratara_fall_cod_401 tara_score1_401 matches 3.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 10001..21000 if score #taratara_fall_cod_401 tara_score1_401 matches 4.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 21001..33000 if score #taratara_fall_cod_401 tara_score1_401 matches 5.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 33001..46000 if score #taratara_fall_cod_401 tara_score1_401 matches 6.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 46001..60000 if score #taratara_fall_cod_401 tara_score1_401 matches 7.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 60001..75000 if score #taratara_fall_cod_401 tara_score1_401 matches 8.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 75001..91000 if score #taratara_fall_cod_401 tara_score1_401 matches 9.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 0 if score #taratara_gaming_score_401 tara_score1_401 matches 91001.. if score #taratara_fall_cod_401 tara_score1_401 matches 10.. run function suiryu_taratara_401:fall_cod
execute if score #taratara_codlimit_401 tara_score1_401 matches ..100 if score #taratara_fever_401 tara_score1_401 matches 1 run function suiryu_taratara_401:fall_cod

kill @s

clear @a cod
