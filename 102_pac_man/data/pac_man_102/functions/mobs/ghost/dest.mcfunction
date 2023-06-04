#ゴーストの目的地設定

#info
# as,at: free

#アカベエ
    #パックマンのいる位置にポイントを置く
    execute at @e[tag=PacMan_base_102,type=item_display] align xz positioned ~0.5 ~ ~0.5 run tp @e[tag=Blinky_dest_102,type=marker] ~ 92 ~

#ピンキー
    #パックマンの3マス先にポイントを置く
    execute at @e[tag=PacMan_base_102,type=item_display] positioned ^ ^ ^3 align xz positioned ~0.5 ~ ~0.5 run tp @e[tag=Pinky_dest_102,type=marker] ~ 92 ~

#アオスケ
    #アカベエのいる位置をパックマンの2マス先のポイントから点対象に移動させた位置
    execute at @e[tag=PacMan_base_102,type=item_display] positioned ^ ^ ^2 align xz positioned ~0.5 ~ ~0.5 positioned ~ ~1000 ~ facing entity @e[tag=Blinky_base_102,type=item_display,limit=1] feet positioned ^ ^ ^-1000 align xz positioned ~0.5 ~ ~0.5 run tp @e[tag=Inky_dest_102,type=marker] ~ 92 ~

#グズタ
    #パックマンから半径8m以外にいるときパックマンのいる位置にポイントを置く
    execute at @e[tag=Clyde_base_102,type=item_display] unless entity @e[tag=PacMan_base_102,type=item_display,distance=..8] positioned as @e[tag=PacMan_base_102,type=item_display] align xz positioned ~0.5 ~ ~0.5 run tp @e[tag=Clyde_dest_102,type=marker] ~ 92 ~
    #パックマンから半径8m以内にいるときホームポイントにポイントを置く
    execute at @e[tag=Clyde_base_102,type=item_display] if entity @e[tag=PacMan_base_102,type=item_display,distance=..8] run tp @e[tag=Clyde_dest_102,type=marker] 979 92 990