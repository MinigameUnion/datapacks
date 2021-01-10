scoreboard players set #RANGE num_000 10
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ブタ) "},{"text":"ぶー"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ブタ) "},{"text":"ぶーぶー"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ブタ) "},{"text":"ぶひ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ブタ) "},{"text":"ブヒブヒ"}]
execute if score #RANDOM num_000 matches 8 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ブタ) "},{"text":"グウグウ"}]
execute if score #RANDOM num_000 matches 9 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ブタ) "},{"text":"グッグッ"}]
