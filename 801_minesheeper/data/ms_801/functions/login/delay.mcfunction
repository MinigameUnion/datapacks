#> ms_801:login/delay
# ログイン時処理
# 遅延処理
# @internal

# 開始時tpが中断していたら再開
execute if entity @e[type=sheep,tag=Board_801,tag=BoardTp_801] run schedule function ms_801:game/start_tp 2t replace