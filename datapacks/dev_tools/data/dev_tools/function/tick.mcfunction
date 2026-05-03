# dev_tools 메인 틱
# 우클릭 감지 (use_blaze_rod)
execute as @a[nbt={SelectedItem:{id:"minecraft:blaze_rod",Count:1b}},predicate=dev_tools:holding_rod] at @s run function dev_tools:raycast_start

# F키(드롭) 감지
execute as @a[scores={drop_stick=1..}] at @s run function dev_tools:region_raycast_start

# drop_stick 초기화 (1틱 후 자동 리셋)
scoreboard players set @a drop_stick 0
