#> spaceinvaders_101:stage_reset
### 


## 退場用看板
    setblock 1001 62 0 air
    setblock 1001 62 0 minecraft:oak_wall_sign[facing=west]{Text2:'{"text":"ロビーへ戻る","bold":true,"color":"black","clickEvent":{"action":"run_command","value":"/function spaceinvaders_101:leave"}}',GlowingText:true}