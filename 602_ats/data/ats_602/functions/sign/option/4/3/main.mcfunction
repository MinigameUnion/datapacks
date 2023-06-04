function ats_602:block_gen/sign/option/4
function ats_602:sign/option/4/chat_info
function ats_602:sign/option/4/menu
tellraw @s [{"text":"","bold":true},{"text":" - L","color":"dark_red"},{"text":"Ev","color":"dark_gray"},{"text":"e","color":"dark_red","obfuscated":true},{"text":"L : ","color":"dark_red"},{"text":"3 - ","color":"dark_gray"}]
tellraw @s [{"text":"ユニットの密集時の挙動を無効化し、更に再度接触可能になるまで離れなければいけない範囲を大幅に縮小します。"}]
tellraw @s [{"text":"[ミニ換金ペナルティ] ","color":"red"},{"text":" = 13 (Fixed)","color":"dark_gray","bold":true}]
execute unless data storage ats_602:main ChaosOptions.L3 run function ats_602:sign/option/4/3/locked
execute if data storage ats_602:main ChaosOptions.L3 run function ats_602:sign/option/4/3/unlocked