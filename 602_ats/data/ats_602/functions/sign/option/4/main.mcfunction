function ats_602:block_gen/sign/option/4
function ats_602:sign/option/4/chat_info
execute unless score $o_4_602 a_602 matches 1..3 run tellraw @s [{"text":"適用レベル - "},{"text":"Level 0","color":"dark_gray"}]
execute if score $o_4_602 a_602 matches 1 run tellraw @s [{"text":"適用レベル - "},{"text":"Level 1","color":"red"}]
execute if score $o_4_602 a_602 matches 2 run tellraw @s [{"text":"適用レベル - "},{"text":"Level 2","color":"dark_red"}]
execute if score $o_4_602 a_602 matches 3 run tellraw @s [{"text":"適用レベル - "},{"text":"Level 3","color":"dark_red"}]
function ats_602:sign/option/4/menu