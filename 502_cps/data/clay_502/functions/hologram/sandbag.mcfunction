execute as @e[type=slime,tag=hologram_sandbag_502] run data merge entity @s {Health:0.0f,Size:0,DeathTime:19s}
summon minecraft:slime 5015.5 -10.0 2031.5 {Tags:["hologram_sandbag_001","hologram_sandbag_502","summoning_502"],NoAI:1b,Silent:1b,Size:5,OnGround:1b,Team:"collision_502",DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b},{Id:11b,Amplifier:6b,Duration:2147483647,ShowParticles:0b}],PersistenceRequired:1b}
execute as @e[type=slime,tag=hologram_sandbag_502,tag=summoning_502,limit=1] at @s run tp @s ~ 2.0 ~
data modify entity @e[type=slime,tag=hologram_sandbag_502,tag=summoning_502,limit=1] OnGround set value 0b
tag @e[type=slime,tag=hologram_sandba_502,tag=summoning_502,limit=1] remove summoning_502