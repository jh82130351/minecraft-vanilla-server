# 위치2 설정 및 영역 계산
execute store result score @s pos2_x run data get entity @s Pos[0]
execute store result score @s pos2_y run data get entity @s Pos[1]
execute store result score @s pos2_z run data get entity @s Pos[2]

function dev_tools:calculate_region
scoreboard players set @s has_pos1 0
