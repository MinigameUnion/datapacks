#> ms_801:initialize_wait
# 初期化判定
# @internal

# 退出用羊がいなければ初期化
execute unless entity 0-0-321-ffff-ffffffffffff run function ms_801:initialize
