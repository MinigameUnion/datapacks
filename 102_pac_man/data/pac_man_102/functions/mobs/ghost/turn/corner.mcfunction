#ゴースト 曲がり角に来た時

#info
# as,at: @e[tag=Ghost_base_102]

#開いてる道を探す
    #右回り
    execute if block ^-0.51 ^ ^ air run scoreboard players add @s _Direction_102 1
    #左回り
    execute if block ^0.51 ^ ^ air run scoreboard players remove @s _Direction_102 1
    #スコアの調節
    scoreboard players set @s[scores={_Direction_102=5}] _Direction_102 1
    scoreboard players set @s[scores={_Direction_102=0}] _Direction_102 4

#位置の調節
execute align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~