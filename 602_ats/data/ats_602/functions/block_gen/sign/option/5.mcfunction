setblock 6052 81 14 minecraft:air
execute if score $o_5_602 a_602 matches -2147483648..2147483647 run setblock 6052 81 14 minecraft:crimson_wall_sign[facing=north]{Text2:'{"text":"Wait Time","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/5/main"}}',Text3:'{"text":"ターン移行時間","color":"dark_aqua"}',Text4:'[{"text":"Time : ","color":"dark_aqua"},{"score":{"name":"$o_5_602","objective":"a_602"}}]'}
execute unless score $o_5_602 a_602 matches -2147483648..2147483647 run setblock 6052 81 14 minecraft:crimson_wall_sign[facing=north]{Text2:'{"text":"Wait Time","underlined":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/5/locked"}}',Text3:'{"text":"ターン移行時間","color":"dark_aqua"}',Text4:'{"text":"Locked","color":"red"}'}
