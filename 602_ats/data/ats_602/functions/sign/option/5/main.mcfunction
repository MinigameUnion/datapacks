function ats_602:block_gen/sign/option/5
function ats_602:sign/option/5/chat_info
tellraw @s [{"text":"現在の設定 : "},{"score":{"name":"$o_5_602","objective":"a_602"},"color":"dark_aqua","bold":true}]
tellraw @s [{"text":"範囲 : "},{"text":"1～710","color":"dark_aqua","bold":true}]
tellraw @s [{"text":"","underlined":true},{"text":"[-20] ","clickEvent":{"action":"run_command","value":"/trigger click_602 set 151"}},{"text":"[-1]","clickEvent":{"action":"run_command","value":"/trigger click_602 set 152"}},{"text":"  /  ","underlined":false},{"text":"[RESET]","clickEvent":{"action":"run_command","value":"/trigger click_602 set 155"}},{"text":"  /  ","underlined":false},{"text":"[+1]","clickEvent":{"action":"run_command","value":"/trigger click_602 set 153"}},{"text":"[+20]","clickEvent":{"action":"run_command","value":"/trigger click_602 set 154"}}]
