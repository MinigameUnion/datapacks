execute if entity @s[tag=start_602] run function ats_602:tile/type/llama/0
execute unless entity @s[scores={z1_602=1}] if entity @e[tag=stop_602,distance=..5] run function ats_602:tile/type/llama/1
execute if entity @s[tag=result_602] run function ats_602:tile/type/llama/result