scoreboard players set #RANGE num_000 15
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"にゃーん"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"にゃー"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"みゃあ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"にゃんにゃん"}]
execute if score #RANDOM num_000 matches 8..9 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"にゃーにゃー"}]
execute if score #RANDOM num_000 matches 10..11 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"にゃお"}]
execute if score #RANDOM num_000 matches 12 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"シャー"}]
execute if score #RANDOM num_000 matches 13 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"キシャー"}]
execute if score #RANDOM num_000 matches 14 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(ネコ) "},{"text":"ｺﾞﾛｺﾞﾛ"}]
