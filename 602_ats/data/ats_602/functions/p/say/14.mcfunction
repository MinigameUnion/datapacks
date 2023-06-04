scoreboard players set #RANGE num_000 1
function tool_000:random
execute if score #RANDOM num_000 matches 0 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(イカ) "},{"text":"…"}]
