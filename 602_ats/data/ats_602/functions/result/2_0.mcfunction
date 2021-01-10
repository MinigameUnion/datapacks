title @s times 0 100 60
execute if score $602 gamemode_602 matches 1 run title @s title [{"text":"Score:"},{"color":"yellow","score":{"name":"$602","objective":"score_602"}}]
tellraw @s [{"text":"Total : "},{"color":"yellow","score":{"name":"$602","objective":"score_602"}},{"text":" !"}]
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 0.8 1.0
particle minecraft:firework ~ ~0.8 ~ 0.1 0.1 0.1 0.2 50
