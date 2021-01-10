function ats_602:tile/am/polar_bear
tellraw @a[team=602] [{"text":"["},{"text":"シロクマ"},{"text":"] Score: "},{"text":"50 !"}]
scoreboard players add @s score_602 50
scoreboard players add $602 score_602 50