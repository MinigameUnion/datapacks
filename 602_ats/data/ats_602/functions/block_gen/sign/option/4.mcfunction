setblock 6052 82 14 minecraft:air
execute if score $o_4_602 a_602 matches 1 run setblock 6052 82 14 minecraft:crimson_wall_sign[facing=north]{Text2:'{"text":"CHAOOoS Level","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/4/main"}}',Text3:'{"text":"ｹｲｵｩｽレベル","color":"dark_red"}',Text4:'[{"text":"LEVEL : 1","color":"red"}]'}
execute if score $o_4_602 a_602 matches 2 run setblock 6052 82 14 minecraft:crimson_wall_sign[facing=north]{Text2:'{"text":"CHAOOoS Level","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/4/main"}}',Text3:'{"text":"ｹｲｵｩｽレベル","color":"dark_red"}',Text4:'[{"text":"LEVEL : 2","color":"dark_red"}]'}
execute if score $o_4_602 a_602 matches 3 run setblock 6052 82 14 minecraft:crimson_wall_sign[facing=north]{Text2:'{"text":"CHAOOoS Level","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/4/main"}}',Text3:'{"text":"ｹｲｵｩｽレベル","color":"dark_red"}',Text4:'[{"text":"L","color":"dark_red"},{"text":"Ev","color":"black"},{"text":"e","color":"dark_red","obfuscated":true},{"text":"L : ","color":"dark_red"},{"text":"3","color":"black"}]'}
execute unless score $o_4_602 a_602 matches 1..3 run setblock 6052 82 14 minecraft:crimson_wall_sign[facing=north]{Text2:'{"text":"CHAOOoS Level","underlined":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/function ats_602:sign/option/4/main"}}',Text3:'{"text":"ｹｲｵｩｽレベル","color":"dark_red"}',Text4:'[{"text":"LEVEL : 0","color":"black"}]'}