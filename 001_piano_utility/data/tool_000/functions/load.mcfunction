#> tool_000:load
# @within
#   tag/function minecraft:load

#>
# @public
    #declare objective food_000 0～21の値で設定でき、満腹度をその値に調整します。(21の時以外、foodSaturationLevelは0に調整されます)
    #declare objective exp_num_000 値を設定後 player_000:experience/set を実行すると、経験値バーを(exp_num_000/exp_max_000)にセットします
    #declare objective exp_max_000 値を設定後 player_000:experience/set を実行すると、経験値バーを(exp_num_000/exp_max_000)にセットします
    #declare objective level_000 値を設定後 player_000:experience/set を実行すると、経験値レベルをその値にセットします
    #declare tag fire_000 このタグが付与されているEntityは、常に炎上状態になります
    #declare tag extinguish_000 このタグが付与されているEntityは、常に炎上がキャンセルされます
    #declare tag entity_block_000 このタグが付与されているfalling_blockは、自然消滅しなくなります
    #declare storage tool_000:api
#>
# @within
#   function tool_000:**
    #declare storage tool_000:

##スコア
scoreboard objectives add foodLevel_000 food {"text":"(000)foodLevel"}
scoreboard objectives add food_000 dummy {"text":"(000)満腹度"}
scoreboard objectives add XpLevel_000 level {"text":"(000)XpLevel"}
scoreboard objectives add XpP_000 dummy {"text":"(000)XpP"}
scoreboard objectives add level_000 dummy {"text":"(000)レベル設定値"}
scoreboard objectives add exp_num_000 dummy {"text":"(000)経験値バー設定値"}
scoreboard objectives add exp_max_000 dummy {"text":"(000)経験値バー最大値"}
#scoreboard objectives add damage_000 dummy {"text":"(000)スコア分ダメージ"}