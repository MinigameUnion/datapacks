#execute unless score $602 gamemode_602 matches 1 run function ats_602:unit/hit/score
function ats_602:unit/rot/rand
particle minecraft:angry_villager ~ ~ ~ 1.0 1.0 1.0 0 8 normal @a[tag=in_602]
tag @s add hit_602