summon husk ~ -30.0 ~ {Tags:["summoning_502","target_plate_502","target_501"],Invulnerable:1b,NoAI:1b,DeathLootTable:"minecraft:empty",Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[tag=restart_target_502] as @e[y=-30,tag=summoning_502,sort=nearest,limit=1,distance=..0.5] run function clay_502:target_plate/summon/restart
execute if entity @s[tag=practice_target_502] as @e[y=-30,tag=summoning_502,sort=nearest,limit=1,distance=..0.5] run function clay_502:target_plate/summon/practice