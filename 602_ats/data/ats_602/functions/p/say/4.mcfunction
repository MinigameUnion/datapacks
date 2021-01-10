scoreboard players set #RANGE num_000 10
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒツジ) "},{"text":"メー"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒツジ) "},{"text":"メェェ"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒツジ) "},{"text":"メエ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒツジ) "},{"text":"メーエ"}]
execute if score #RANDOM num_000 matches 8 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒツジ) "},{"text":"ヴェー"}]
execute if score #RANDOM num_000 matches 9 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒツジ) "},{"text":"バー"}]
