function ats_602:sign/gamemode/3/chat_info
tellraw @s [{"text":"Buy : "},{"score":{"name":"$g_chaos_602","objective":"a1_602"}},{"text":" mini / "},{"text":"右クリックで開放","bold":true,"underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger click_602 set 31"}}]
