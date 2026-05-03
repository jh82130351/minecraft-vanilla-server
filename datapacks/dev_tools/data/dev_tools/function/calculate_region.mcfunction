# 영역 계산 (dx, dy, dz)
# pos1과 pos2의 차이 계산 (절댓값 + 1)

# DX 계산: |pos2_x - pos1_x| + 1
scoreboard players operation @s region_dx dev_tools = @s pos2_x
scoreboard players operation @s region_dx dev_tools -= @s pos1_x
execute if score @s region_dx dev_tools matches ..-1 run scoreboard players operation @s region_dx dev_tools *= -1 dev_tools
scoreboard players add @s region_dx dev_tools 1

# DY 계산: |pos2_y - pos1_y| + 1
scoreboard players operation @s region_dy dev_tools = @s pos2_y
scoreboard players operation @s region_dy dev_tools -= @s pos1_y
execute if score @s region_dy dev_tools matches ..-1 run scoreboard players operation @s region_dy dev_tools *= -1 dev_tools
scoreboard players add @s region_dy dev_tools 1

# DZ 계산: |pos2_z - pos1_z| + 1
scoreboard players operation @s region_dz dev_tools = @s pos2_z
scoreboard players operation @s region_dz dev_tools -= @s pos1_z
execute if score @s region_dz dev_tools matches ..-1 run scoreboard players operation @s region_dz dev_tools *= -1 dev_tools
scoreboard players add @s region_dz dev_tools 1

# 결과 출력
tellraw @s [{"text":"════════════════════════════\n","color":"gold"},{"text":"📦 영역 정보\n","bold":true,"color":"yellow"},{"text":"════════════════════════════\n","color":"gold"},{"text":"위치1: X: ","color":"gray"},{"score":{"name":"@s","objective":"pos1_x"},"color":"yellow"},{"text":" Y: ","color":"gray"},{"score":{"name":"@s","objective":"pos1_y"},"color":"yellow"},{"text":" Z: ","color":"gray"},{"score":{"name":"@s","objective":"pos1_z"},"color":"yellow"},{"text":"\n위치2: X: ","color":"gray"},{"score":{"name":"@s","objective":"pos2_x"},"color":"yellow"},{"text":" Y: ","color":"gray"},{"score":{"name":"@s","objective":"pos2_y"},"color":"yellow"},{"text":" Z: ","color":"gray"},{"score":{"name":"@s","objective":"pos2_z"},"color":"yellow"},{"text":"\n────────────────────────────\n","color":"gold"},{"text":"DX (가로): ","color":"white"},{"score":{"name":"@s","objective":"region_dx"},"color":"green"},{"text":" 블록\n","color":"white"},{"text":"DY (높이): ","color":"white"},{"score":{"name":"@s","objective":"region_dy"},"color":"green"},{"text":" 블록\n","color":"white"},{"text":"DZ (세로): ","color":"white"},{"score":{"name":"@s","objective":"region_dz"},"color":"green"},{"text":" 블록\n","color":"white"},{"text":"════════════════════════════","color":"gold"}]

particle end_rod ~ ~ ~ 2 2 2 0.2 50
playsound entity.firework_rocket.blast player @s ~ ~ ~ 1 1.5
