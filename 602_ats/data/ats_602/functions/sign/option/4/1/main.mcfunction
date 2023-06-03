function ats_602:block_gen/sign/option/4
function ats_602:sign/option/4/chat_info
function ats_602:sign/option/4/menu
tellraw @s [{"text":" - Level 1 - ","color":"red","bold":true}]
tellraw @s [{"text":"ユニットの密集条件を3体から5体に増やします。"}]
execute unless data storage ats_602:main ChaosOptions.L1 run function ats_602:sign/option/4/1/locked
execute if data storage ats_602:main ChaosOptions.L1 run function ats_602:sign/option/4/1/unlocked