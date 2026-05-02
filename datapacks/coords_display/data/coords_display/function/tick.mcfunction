# 5틱(0.25초)마다 업데이트 (부드러운 표시)
execute if score $timer coord_timer matches 5.. run function coords_display:update_all
execute if score $timer coord_timer matches 5.. run scoreboard players set $timer coord_timer 0
scoreboard players add $timer coord_timer 1
# 신규 플레이어에게 보스바 표시 (매 틱 실행, 부하 적음)
execute as @a run bossbar set minecraft:coords players @s
