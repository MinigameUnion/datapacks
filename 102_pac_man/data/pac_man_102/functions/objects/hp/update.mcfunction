#> pac_man_102:objects/hp/update
### 現在の体力に更新

## 
    execute if score @s _Operation_102 > @a[tag=Playing_102,limit=1] _HP_102 run data modify entity @s brightness set value {sky:2,block:2}
    execute if score @s _Operation_102 <= @a[tag=Playing_102,limit=1] _HP_102 run data modify entity @s brightness set value {sky:15,block:15}