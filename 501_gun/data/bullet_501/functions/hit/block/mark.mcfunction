tp 0-0-1f5-0-0 ~ ~ ~
execute unless score #X pos_501 matches 0 store result entity 0-0-1f5-0-0 Pos[0] double 0.0001 run scoreboard players get #x num_501
execute unless score #Y pos_501 matches 0 store result entity 0-0-1f5-0-0 Pos[1] double 0.0001 run scoreboard players get #y num_501
execute unless score #Z pos_501 matches 0 store result entity 0-0-1f5-0-0 Pos[2] double 0.0001 run scoreboard players get #z num_501
execute unless score #X pos_501 matches 0 positioned as 0-0-1f5-0-0 unless entity @e[tag=hit_mark_501,distance=..0.05,limit=1] run summon armor_stand ~ ~ ~ {Tags:["hit_mark_501","summoning_501","x_501"],Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:200}
execute unless score #Y pos_501 matches 0 positioned as 0-0-1f5-0-0 unless entity @e[tag=hit_mark_501,distance=..0.05,limit=1] run summon armor_stand ~ ~ ~ {Tags:["hit_mark_501","summoning_501","y_501"],Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:200}
execute unless score #Z pos_501 matches 0 positioned as 0-0-1f5-0-0 unless entity @e[tag=hit_mark_501,distance=..0.05,limit=1] run summon armor_stand ~ ~ ~ {Tags:["hit_mark_501","summoning_501","z_501"],Marker:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:200}
scoreboard players operation #HITMARK ope_501 > #0 num_501
execute positioned as 0-0-1f5-0-0 as @e[tag=hit_mark_501,tag=summoning_501,distance=..0.05] run function bullet_501:hit/block/marked

data modify entity 0-0-1f5-0-0 Pos set from storage gun_501:temp Pos

particle minecraft:smoke ~ ~ ~ 0 -0.1 0 0 0 force