execute unless score $602 e_602 matches ..0 unless block ~ 79 ~ minecraft:glass run function ats_602:p/summon/error0
execute unless score $602 e_602 matches ..0 unless data entity @s SelectedItem.tag.602 run function ats_602:p/summon/error1
execute if score $602 e_602 matches ..0 run function ats_602:p/summon/error2
execute unless score $602 e_602 matches ..0 if block ~ 79 ~ minecraft:glass if data entity @s SelectedItem.tag.602 rotated as @s positioned ~ 64.5 ~ run function ats_602:p/summon/main