scoreboard players set #RANGE num_000 1
function tool_000:random
execute if score #RANDOM num_000 matches 0 run tellraw @a[team=602] [{"text":"@"},{"selector": "@s"},{"text": "(イカ) "},{"text":"…"}]
