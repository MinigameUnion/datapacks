function ats_602:sign/option/0/chat_info
tellraw @s [{"text":"Buy : "},{"score":{"name":"$o_0_602","objective":"a1_602"}},{"text":" mini / "},{"text":"右クリックで開放","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 100"}}]
