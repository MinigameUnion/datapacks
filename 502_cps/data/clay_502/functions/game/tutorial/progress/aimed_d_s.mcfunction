execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1
tellraw @a[tag=ticking_502] {"translate":"実際にクレーを撃ってみましょう (%s/%s)","color":"gray","with":["0","3"]}
tellraw @a[tag=ticking_502] {"translate":"クレーの%sして狙いを定めてください","color":"gray","with":[{"text":"距離と動きを予測","color":"white"}]}
scoreboard players set @a[tag=ticking_502] hit_502 0
scoreboard players set @s tick_502 80
scoreboard players set @s progress_502 4