setblock 6051 81 14 minecraft:air
execute if score $o_3_602 a_602 matches -2147483648..2147483647 if score $o_3_602 a_602 matches 1 run setblock 6051 81 14 minecraft:acacia_wall_sign[facing=north]{Text2:'{"text":"Quick Item","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/3/main"}}',Text3:'{"text":"クイック発射","color":"dark_blue"}',Text4:'{"text":"OFF","color":"red","underlined":true}'}
execute if score $o_3_602 a_602 matches -2147483648..2147483647 if score $o_3_602 a_602 matches -1 run setblock 6051 81 14 minecraft:acacia_wall_sign[facing=north]{Text2:'{"text":"Quick Item","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/3/main"}}',Text3:'{"text":"クイック発射","color":"dark_blue"}',Text4:'{"text":"ON","color":"green","underlined":true}'}
execute unless score $o_3_602 a_602 matches -2147483648..2147483647 run setblock 6051 81 14 minecraft:acacia_wall_sign[facing=north]{Text2:'{"text":"Quick Item","underlined":true,"color":"dark_blue","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/3/locked"}}',Text3:'{"text":"クイック発射","color":"dark_blue"}',Text4:'{"text":"Locked","color":"red"}'}