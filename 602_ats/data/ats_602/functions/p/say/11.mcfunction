scoreboard players set #RANGE num_000 8
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ゾウ) "},{"text":"パオーン！"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ゾウ) "},{"text":"バオーン"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ゾウ) "},{"text":"キュウ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ゾウ) "},{"text":"ウォーン"}]
