#真後ろを向く

#info
# as,at: @e[tag=Ghost_base_102,type=item_display]

#ゴーストの視点切り替え
scoreboard players set @s _Operation_102 0
scoreboard players add @s _Direction_102 2
scoreboard players set @s[scores={_Direction_102=5}] _Direction_102 1
scoreboard players set @s[scores={_Direction_102=6}] _Direction_102 2