function ats_602:block_gen/sign/option/4
function ats_602:sign/option/4/chat_info
function ats_602:sign/option/4/menu
tellraw @s [{"text":" - Level 2 - ","color":"dark_red","bold":true}]
tellraw @s [{"text":"再度接触可能になるまで離れなければいけない範囲を縮小します。"}]
execute unless data storage ats_602:main ChaosOptions.L2 run function ats_602:sign/option/4/2/locked
execute if data storage ats_602:main ChaosOptions.L2 run function ats_602:sign/option/4/2/unlocked