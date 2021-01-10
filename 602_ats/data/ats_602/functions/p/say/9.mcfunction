scoreboard players set #RANGE num_000 9
function tool_000:random
execute if score #RANDOM num_000 matches 0..1 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ライオン) "},{"text":"ガウッ！"}]
execute if score #RANDOM num_000 matches 2..3 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ライオン) "},{"text":"ぬおーん"}]
execute if score #RANDOM num_000 matches 4..5 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ライオン) "},{"text":"ガオゥ"}]
execute if score #RANDOM num_000 matches 6..7 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ライオン) "},{"text":"グルル"}]
execute if score #RANDOM num_000 matches 8 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(ライオン) "},{"text":"ガオオー！！"}]
