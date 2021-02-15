##TITLES
title @a[tag=ticking_502] times 10 50 10

scoreboard players operation #1 hit_502 = @s hit_502
scoreboard players operation #2 hit_502 = @a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1] hit_502

execute if score #1 hit_502 > #2 hit_502 run tag @s add winner_502
execute if score #1 hit_502 > #2 hit_502 if score #TOTAL num_502 < #PERFECT num_502 run title @a[tag=ticking_502] subtitle ["",{"score":{"name":"@s","objective":"hit_502"},"bold":true},{"text":" : "},{"score":{"name":"@a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1]","objective":"hit_502"},"bold":false}]
execute if score #1 hit_502 > #2 hit_502 if score #TOTAL num_502 >= #PERFECT num_502 run title @a[tag=ticking_502] subtitle ["",{"score":{"name":"@s","objective":"hit_502"},"bold":true,"color": "gold"},{"text":" : ","color": "gold"},{"score":{"name":"@a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1]","objective":"hit_502"},"bold":false,"color": "gold"}]

execute if score #1 hit_502 < #2 hit_502 run tag @a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1] add winner_502
execute if score #1 hit_502 < #2 hit_502 if score #TOTAL num_502 < #PERFECT num_502 run title @a[tag=ticking_502] subtitle ["",{"score":{"name":"@s","objective":"hit_502"},"bold":false},{"text":" : "},{"score":{"name":"@a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1]","objective":"hit_502"},"bold":true}]
execute if score #1 hit_502 < #2 hit_502 if score #TOTAL num_502 >= #PERFECT num_502 run title @a[tag=ticking_502] subtitle ["",{"score":{"name":"@s","objective":"hit_502"},"bold":false,"color": "gold"},{"text":" : ","color": "gold"},{"score":{"name":"@a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1]","objective":"hit_502"},"bold":true,"color": "gold"}]

execute if score #1 hit_502 = #2 hit_502 if score #TOTAL num_502 < #PERFECT num_502 run title @a[tag=ticking_502] subtitle ["",{"score":{"name":"@s","objective":"hit_502"},"bold":false},{"text":" : "},{"score":{"name":"@a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1]","objective":"hit_502"},"bold":false}]
execute if score #1 hit_502 = #2 hit_502 if score #TOTAL num_502 >= #PERFECT num_502 run title @a[tag=ticking_502] subtitle ["",{"score":{"name":"@s","objective":"hit_502"},"bold":false,"color": "gold"},{"text":" : ","color": "gold"},{"score":{"name":"@a[tag=ticking_502,tag=playing_502,scores={num_502=2},limit=1]","objective":"hit_502"},"bold":false,"color": "gold"}]

execute unless score #1 hit_502 = #2 hit_502 run title @a[tag=ticking_502] title [{"selector":"@a[tag=winner_502,limit=1]"},{"text":" WIN !"}]

playsound minecraft:entity.player.levelup player @a[tag=ticking_502,tag=!winner_502] ^ ^ ^20 1 1 1
playsound minecraft:ui.toast.challenge_complete master @a[tag=winner_502,limit=1] ^ ^ ^20 0.75 1 0.75