#> clay_502:structure/villager
# @private

#execute as @e[tag=clay_502,type=minecraft:villager,distance=..16] run function tool_000:entity/delete
summon villager ~ ~-0.5 ~-0.5 {UUID:[I; 0, 502, 0, 1000],Tags:["clay_502"],Team:"collision_502",Health:1.0f,Attributes:[{Name:"generic.movement_speed",Base:0.0d},{Name:"generic.max_health",Base:1.0d},{Name:"generic.knockback_resistance",Base:1.0d}],Silent:1b,Invulnerable:1,ArmorItems:[{},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],VillagerData:{type:"minecraft:plains",profession:"minecraft:fletcher",level:9},ActiveEffects:[{Id:11,Amplifier:4b,Duration:2147483647,ShowParticles:0b}]}
setblock ~ ~ ~ air