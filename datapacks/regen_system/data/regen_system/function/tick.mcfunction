# 매 틱: 모든 플레이어 회복 감지
execute as @a at @s run function regen_system:detect_state

# 주민 디스폰 방지 (1틱마다 실행, 부하 적음)
execute as @e[type=villager] run data merge entity @s {PersistenceRequired:1b}
