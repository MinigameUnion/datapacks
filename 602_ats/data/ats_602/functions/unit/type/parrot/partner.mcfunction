scoreboard players operation @e[limit=1,tag=hit_partner_602] mulScore2_602 = @s mulScore2_602
tellraw @a[tag=join_game_602] [{"text":"["},{"nbt":"item.tag.Name","entity":"@e[limit=1,tag=hit_partner_602]","interpret":true},{"text":"]"},{"text":" ← "},{"text":"スコア加算倍率:","color":"gold"},{"nbt":"item.tag.mul1_602","entity":"@s","color":"gold","interpret":true},{"text":"["},{"nbt":"item.tag.Name","entity":"@s","interpret":true},{"text":"]"}]

function ats_602:unit/am/parrot
scoreboard players set @s z1_602 1