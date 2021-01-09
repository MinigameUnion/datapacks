#> tool_000:get_ms
# @public

execute in minecraft:the_nether store result score #ms num_000 run worldborder get
scoreboard players remove #ms num_000 1
#tellraw @p [{"text":"ms:"},{"score":{"objective": "num_000","name": "#ms"}}]