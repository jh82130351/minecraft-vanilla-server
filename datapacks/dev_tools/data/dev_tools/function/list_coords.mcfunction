# 저장된 좌표 목록 출력
tellraw @s {"text":"=================================","color":"gold"}
tellraw @s {"text":"📍 저장된 좌표 목록","bold":true,"color":"yellow"}
tellraw @s {"text":"=================================","color":"gold"}

# 마커 개수 확인 후 각 좌표 출력
execute store result score $coord_count dev_tools run execute if entity @e[type=marker,tag=coord_marker]
execute if score $coord_count dev_tools matches 0 run tellraw @s {"text":"저장된 좌표가 없습니다.","color":"gray"}

tellraw @s [{"text":"\n총 ","color":"gray"},{"score":{"name":"$coord_count","objective":"dev_tools"},"color":"yellow"},{"text":"개의 좌표가 저장되어 있습니다.","color":"gray"}]
tellraw @s {"text":"=================================","color":"gold"}
