function ats_602:unit/am/panda
tellraw @a[tag=join_area_602] [{"text":"["},{"text":"パンダ"},{"text":"] Score: "},{"text":"50 !"}]
scoreboard players add @s score_602 50
scoreboard players add $602 score_602 50
scoreboard players set @s z1_602 0