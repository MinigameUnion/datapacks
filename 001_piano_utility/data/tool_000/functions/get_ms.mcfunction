#> tool_000:get_ms
# @public

execute store result score #ms num_000 run worldborder get
scoreboard players remove #ms num_000 10000000
#tellraw @p [{"text":"ms:"},{"score":{"objective": "num_000","name": "#ms"}}]