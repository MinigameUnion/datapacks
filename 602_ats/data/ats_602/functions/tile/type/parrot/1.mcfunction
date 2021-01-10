data modify storage ats_602:text mul_602 set from entity @e[sort=nearest,limit=1,distance=..0.1] ArmorItems[3].tag.mul1_602
scoreboard players operation @s mulScore1_602 = @e[sort=nearest,limit=1,distance=..0.1] mulScore1_602
tellraw @a[team=602] [{"text":"["},{"selector":"@s"},{"text":"]"},{"text":" ← "},{"text":"スコア加算倍率:","color":"gold"},{"storage": "ats_602:text","nbt":"mul1_602","color":"gold"},{"text":"["},{"selector":"@e[sort=nearest,limit=1,distance=..0.1]"},{"text":"]"}]

function ats_602:tile/am/parrot
scoreboard players set @s z1_602 1