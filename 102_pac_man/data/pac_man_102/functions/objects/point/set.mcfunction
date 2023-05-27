#> pac_man_102:objects/point/set
### 得点の表示板

## 召喚
    kill @e[tag=Point_102,type=text_display]
    summon text_display 1014.5 93.00 1004.5 {Tags:[Entity_102,Point_102],text:'{"translate":"               \\n%s","bold":true,"with":[{"score":{"name":"@a[tag=Playing_102,limit=1]","objective":"_Point_102"}}]}',see_through:true,background:0,alignment:"right",Rotation:[90f,-70f],transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,0.12f]}