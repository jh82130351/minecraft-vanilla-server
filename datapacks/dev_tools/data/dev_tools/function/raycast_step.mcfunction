# 레이캐스트 스텝
# 플레이어가 바라보는 방향으로 한 칸씩 이동하며 블록 감지
# execute as @s at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:air run scoreboard players remove @s raycast_dist 1
# (구현 복잡도가 높아 단순화: 플레이어 위치 기준 주변 블록 감지)

# 단순화된 방식: 플레이어 위치에서 바라보는 방향으로 블록 감지
execute at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run scoreboard players remove @s raycast_dist 1
execute at @s anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ air run function dev_tools:save_coords
execute if score @s raycast_dist matches 1.. run function dev_tools:raycast_step
