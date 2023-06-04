scoreboard players set #RANGE num_000 15
function tool_000:random
execute if score #RANDOM num_000 matches 0..8 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(おさかな)) "},{"text":"…"}]
execute if score #RANDOM num_000 matches 9..11 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(おさかな)) "},{"text":"………"}]
execute if score #RANDOM num_000 matches 12 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(おさかな)) "},{"text":"ﾋﾟﾁｯ"}]
execute if score #RANDOM num_000 matches 13 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(おさかな)) "},{"text":"ﾋﾞﾁﾋﾞﾁ"}]
execute if score #RANDOM num_000 matches 14 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(おさかな)) "},{"text":"ﾊﾟｸﾊﾟｸ…"}]
