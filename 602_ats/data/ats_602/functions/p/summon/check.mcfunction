execute if data entity @s SelectedItem.tag.602 positioned as @s if block ~ 79 ~ minecraft:glass rotated as @s positioned ~ 64.5 ~ run function ats_602:p/summon/main
execute positioned as @s unless block ~ 79 ~ minecraft:glass run function ats_602:p/summon/error0
execute positioned as @s unless data entity @s SelectedItem.tag.602 run function ats_602:p/summon/error1