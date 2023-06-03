execute unless entity @s[tag=in_602] run tellraw @s [{"text":"[WARNING]正しくATSに入室できていないようです。心当たりがある場合はご自身でお戻りください。","color":"red"}]
execute if entity @s[tag=in_602] run function ats_602:leave