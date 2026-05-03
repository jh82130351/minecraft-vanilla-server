# dev_tools 초기화
# 스코어보드 생성
scoreboard objectives add coord_x dummy
scoreboard objectives add coord_y dummy
scoreboard objectives add coord_z dummy
scoreboard objectives add pos1_x dummy
scoreboard objectives add pos1_y dummy
scoreboard objectives add pos1_z dummy
scoreboard objectives add pos2_x dummy
scoreboard objectives add pos2_y dummy
scoreboard objectives add pos2_z dummy
scoreboard objectives add region_dx dummy
scoreboard objectives add region_dy dummy
scoreboard objectives add region_dz dummy
scoreboard objectives add has_pos1 dummy
scoreboard objectives add raycast_dist dummy
scoreboard objectives add use_blaze_rod dummy
scoreboard objectives add drop_stick dummy
scoreboard objectives add dev_tools dummy

tellraw @a {"text":"[dev_tools] 데이터팩 로드 완료","color":"green"}
