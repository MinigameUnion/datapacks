scoreboard players set #RANGE num_000 11
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒヨコ) "},{"text":"ピヨ"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒヨコ) "},{"text":"ピヨピヨ"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒヨコ) "},{"text":"ピッ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒヨコ) "},{"text":"ピッピッ"}]
execute if score #RANDOM num_000 matches 8..9 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒヨコ) "},{"text":"ぴよー"}]
execute if score #RANDOM num_000 matches 10 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ヒヨコ) "},{"text":"ﾋﾟｰ！"}]
