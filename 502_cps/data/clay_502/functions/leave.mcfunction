scoreboard players set @s playing_000 0
function player_000:leave_game

team leave @s
execute unless entity @a[scores={playing_000=502}] run function clay_502:hologram/start