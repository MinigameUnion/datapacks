execute as @a[x=6016,y=0,z=16,dx=32,dy=255,dz=32] unless entity @s[team=602] run function ats_602:mem/0
execute if entity @a[team=602] run tellraw @a [{"text":"[INFO]","color":"aqua","bold":true},{"text":"アニマル塔戦闘、参加締め切りとなります。","color":"white"}]
execute unless entity @a[team=602] run tellraw @a [{"text":"[INFO]","color":"aqua","bold":true},{"text":"アニマル塔戦闘の参加者がいなかったため、自動的にキャンセルされました。","color":"white"}]
