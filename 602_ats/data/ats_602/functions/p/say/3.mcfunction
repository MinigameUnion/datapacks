scoreboard players set #RANGE num_000 9
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ウシ) "},{"text":"モー"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ウシ) "},{"text":"ブモー"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ウシ) "},{"text":"ウモーーゥ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ウシ) "},{"text":"モーウ"}]
execute if score #RANDOM num_000 matches 8 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ウシ) "},{"text":"ﾌﾞﾙﾙ"}]
