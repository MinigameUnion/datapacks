scoreboard players set #RANGE num_000 8
function tool_000:random
execute if score #RANDOM num_000 matches 0..4 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(クリーパー) "},{"text":"…"}]
execute if score #RANDOM num_000 matches 5 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(クリーパー) "},{"text":"ｼｭｰ"}]
execute if score #RANDOM num_000 matches 6 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(クリーパー) "},{"text":"シュッ"}]
execute if score #RANDOM num_000 matches 7 run tellraw @a[tag=join_area_602] [{"text":"@"},{"selector": "@s"},{"text": "(クリーパー) "},{"text":"ﾌｽｰ"}]
