# 위치1 설정
execute store result score @s pos1_x run data get entity @s Pos[0]
execute store result score @s pos1_y run data get entity @s Pos[1]
execute store result score @s pos1_z run data get entity @s Pos[2]

scoreboard players set @s has_pos1 1

tellraw @s [{"text":"────────────────────────\n","color":"gray"},{"text":"✓ 위치1 설정 완료\n","color":"green"},{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"pos1_x"},"color":"yellow"},{"text":"\nY: ","color":"white"},{"score":{"name":"@s","objective":"pos1_y"},"color":"yellow"},{"text":"\nZ: ","color":"white"},{"score":{"name":"@s","objective":"pos1_z"},"color":"yellow"},{"text":"\nF키로 위치2를 설정하세요\n","color":"gray"},{"text":"────────────────────────","color":"gray"}]

# 파티클
particle end_rod ~ ~ ~ 1 1 1 0.1 20
particle happy_villager ~ ~1 ~ 0.5 0.5 0.5 0 10
playsound entity.player.levelup player @s ~ ~ ~ 1 1.2
