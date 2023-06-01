function ats_602:unit/am/polar_bear
tellraw @a[tag=join_game_602] [{"text":"["},{"text":"シロクマ"},{"text":"] Score: "},{"text":"50 !"}]
scoreboard players add @s score_602 50
scoreboard players add $602 score_602 50