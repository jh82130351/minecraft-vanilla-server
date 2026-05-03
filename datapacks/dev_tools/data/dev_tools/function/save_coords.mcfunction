# 좌표 저장
# 현재 위치의 블록 좌표를 스코어보드에 저장하고 마커 생성
execute store result score @s coord_x run data get entity @s Pos[0]
execute store result score @s coord_y run data get entity @s Pos[1]
execute store result score @s coord_z run data get entity @s Pos[2]

# 마커 엔티티 생성 (시각적 표시)
summon marker ~ ~ ~ {Tags:["coord_marker"]}

# 좌표 표시
tellraw @s [{"text":"✓ 좌표 저장됨: ","color":"green"},{"text":"X: ","color":"white"},{"score":{"name":"@s","objective":"coord_x"},"color":"yellow"},{"text":" Y: ","color":"white"},{"score":{"name":"@s","objective":"coord_y"},"color":"yellow"},{"text":" Z: ","color":"white"},{"score":{"name":"@s","objective":"coord_z"},"color":"yellow"}]

# 파티클 효과
particle end_rod ~ ~ ~ 0.5 0.5 0.5 0.1 10
particle heart ~ ~1 ~ 0.3 0.3 0.3 0 5

# 효과음
playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
