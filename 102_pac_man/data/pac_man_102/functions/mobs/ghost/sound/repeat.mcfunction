#ゴーストの移動音

#info
# as,at: player

#優先度
    #1 通常
    execute if score #ghost_sound_102 _Operation_102 matches 4..5 run scoreboard players set #ghost_sound_102 _Operation_102 1
    #2 スパート1
    execute if score #ghost_sound_102 _Operation_102 matches 1 if score #spurt_102 _State_102 matches 1 run scoreboard players set #ghost_sound_102 _Operation_102 2
    #3 スパート2
    execute if score #ghost_sound_102 _Operation_102 matches 1..2 if score #spurt_102 _State_102 matches 2 run scoreboard players set #ghost_sound_102 _Operation_102 3
    #4 イジケ
    execute if entity @e[tag=Ghost_102,scores={_State_102=3}] run scoreboard players set #ghost_sound_102 _Operation_102 4
    #5 目のみ
    execute if entity @e[tag=Ghost_102,scores={_State_102=4}] run scoreboard players set #ghost_sound_102 _Operation_102 5

#サウンドを鳴らす
execute if score #ghost_sound_102 _Operation_102 matches 1 at @e[tag=Center_102,type=marker] run function pac_man_102:mobs/ghost/sound/normal
execute if score #ghost_sound_102 _Operation_102 matches 2 at @e[tag=Center_102,type=marker] run function pac_man_102:mobs/ghost/sound/spurt_1
execute if score #ghost_sound_102 _Operation_102 matches 3 at @e[tag=Center_102,type=marker] run function pac_man_102:mobs/ghost/sound/spurt_2
execute if score #ghost_sound_102 _Operation_102 matches 4 at @e[tag=Center_102,type=marker] run function pac_man_102:mobs/ghost/sound/izike
execute if score #ghost_sound_102 _Operation_102 matches 5 at @e[tag=Center_102,type=marker] run function pac_man_102:mobs/ghost/sound/death