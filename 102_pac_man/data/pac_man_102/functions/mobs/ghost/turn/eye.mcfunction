#> pac_man_102:mobs/ghost/turn/eye
#目 分岐点にきたとき

#info
# as,at: @e[tag=Ghost_base_102,type=item_display,scores={_State_102=4}]

#分岐先にエンティティを設置
    #正面
    execute if block ^ ^-2 ^1 minecraft:iron_block run summon minecraft:marker ^ ^ ^1 {Tags: [Ghost_102,Ghost_branch_102]}
    #右
    execute if block ^-1 ^-2 ^ minecraft:iron_block run summon minecraft:marker ^-1 ^ ^ {Tags: [Ghost_102,Ghost_branch_102,temp_1_102]}
    #左
    execute if block ^1 ^-2 ^ minecraft:iron_block run summon minecraft:marker ^1 ^ ^ {Tags: [Ghost_102,Ghost_branch_102,temp_2_102]}

    #スコア設定
    scoreboard players set @e[tag=temp_1_102,type=marker] _Direction_102 1
    scoreboard players set @e[tag=temp_2_102,type=marker] _Direction_102 -1
    scoreboard players operation @e[tag=Ghost_branch_102,type=marker] _Direction_102 += @s _Direction_102
    scoreboard players set @e[tag=Ghost_branch_102,type=marker,scores={_Direction_102=0}] _Direction_102 4
    scoreboard players set @e[tag=Ghost_branch_102,type=marker,scores={_Direction_102=5}] _Direction_102 1

#目的地から近い物を選択
execute positioned 1003 92 1001.0 run scoreboard players operation @s _Direction_102 = @e[tag=Ghost_branch_102,type=marker,limit=1,sort=nearest] _Direction_102

#事後処理
kill @e[tag=Ghost_branch_102,type=marker]
tp @s ~ ~ ~