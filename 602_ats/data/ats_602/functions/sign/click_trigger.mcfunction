execute if entity @s[scores={click_602=1}] run function ats_602:sign/info/1/1
execute if entity @s[scores={click_602=2}] run function ats_602:sign/info/1/2
execute if entity @s[scores={click_602=3}] run function ats_602:sign/info/1/3
execute if entity @s[scores={click_602=4}] run function ats_602:sign/info/1/4

execute if entity @s[scores={click_602=11}] run function ats_602:sign/info/2/1
execute if entity @s[scores={click_602=12}] run function ats_602:sign/info/2/2

execute if entity @s[scores={click_602=21}] run function ats_602:sign/info/3/1
execute if entity @s[scores={click_602=22}] run function ats_602:sign/info/3/2
execute if entity @s[scores={click_602=23}] run function ats_602:sign/info/3/3

execute if entity @s[scores={click_602=31}] unless score $g_chaos_602 a_602 matches -2147483648..2147483647 run function ats_602:sign/gamemode/3/unlock0
execute if entity @s[scores={click_602=41}] run function ats_602:sign/g1_0

execute if entity @s[scores={click_602=100}] unless score $o_0_602 a_602 matches -2147483648..2147483647 run function ats_602:sign/option/0/unlock0

execute if entity @s[scores={click_602=110}] unless score $o_1_602 a_602 matches -2147483648..2147483647 run function ats_602:sign/option/1/unlock0

execute if entity @s[scores={click_602=120}] unless score $o_2_602 a_602 matches -2147483648..2147483647 run function ats_602:sign/option/2/unlock0

execute if entity @s[scores={click_602=130}] unless score $o_3_602 a_602 matches -2147483648..2147483647 run function ats_602:sign/option/3/unlock0

execute if entity @s[scores={click_602=140}] run function ats_602:sign/option/4/reset_g_check
execute if entity @s[scores={click_602=141}] run function ats_602:sign/option/4/1/main
execute if entity @s[scores={click_602=142}] run function ats_602:sign/option/4/2/main
execute if entity @s[scores={click_602=143}] run function ats_602:sign/option/4/3/main

execute if entity @s[scores={click_602=144}] run function ats_602:sign/option/4/1/unlock
execute if entity @s[scores={click_602=145}] run function ats_602:sign/option/4/2/unlock
execute if entity @s[scores={click_602=146}] run function ats_602:sign/option/4/3/unlock

execute if entity @s[scores={click_602=147}] run function ats_602:sign/option/4/1/apply_g_check
execute if entity @s[scores={click_602=148}] run function ats_602:sign/option/4/2/apply_g_check
execute if entity @s[scores={click_602=149}] run function ats_602:sign/option/4/3/apply_g_check

execute if entity @s[scores={click_602=150}] unless score $o_5_602 a_602 matches -2147483648..2147483647 run function ats_602:sign/option/5/unlock0
execute if entity @s[scores={click_602=151..152}] run function ats_602:sign/option/5/remove_g_check
execute if entity @s[scores={click_602=153..154}] run function ats_602:sign/option/5/add_g_check
execute if entity @s[scores={click_602=155}] run function ats_602:sign/option/5/reset_g_check


execute if entity @s[scores={click_602=1..}] run scoreboard players reset @s click_602
