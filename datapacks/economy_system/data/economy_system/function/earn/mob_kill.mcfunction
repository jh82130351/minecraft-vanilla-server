# 좀비 처치 (10 코인)
execute if score @s kill_zombie matches 1.. run scoreboard players add @s coins 10
execute if score @s kill_zombie matches 1.. run tellraw @s {"text":"💰 +10 코인 (좀비 처치)","color":"gold"}
execute if score @s kill_zombie matches 1.. run scoreboard players reset @s kill_zombie

# 스켈레톤 처치 (10 코인)
execute if score @s kill_skeleton matches 1.. run scoreboard players add @s coins 10
execute if score @s kill_skeleton matches 1.. run tellraw @s {"text":"💰 +10 코인 (스켈레톤 처치)","color":"gold"}
execute if score @s kill_skeleton matches 1.. run scoreboard players reset @s kill_skeleton

# 크리퍼 처치 (15 코인)
execute if score @s kill_creeper matches 1.. run scoreboard players add @s coins 15
execute if score @s kill_creeper matches 1.. run tellraw @s {"text":"💰 +15 코인 (크리퍼 처치)","color":"gold"}
execute if score @s kill_creeper matches 1.. run scoreboard players reset @s kill_creeper

# 거미 처치 (10 코인)
execute if score @s kill_spider matches 1.. run scoreboard players add @s coins 10
execute if score @s kill_spider matches 1.. run tellraw @s {"text":"💰 +10 코인 (거미 처치)","color":"gold"}
execute if score @s kill_spider matches 1.. run scoreboard players reset @s kill_spider

# 엔더맨 처치 (50 코인)
execute if score @s kill_enderman matches 1.. run scoreboard players add @s coins 50
execute if score @s kill_enderman matches 1.. run tellraw @s {"text":"💰 +50 코인 (엔더맨 처치)","color":"gold"}
execute if score @s kill_enderman matches 1.. run scoreboard players reset @s kill_enderman

# 위더 스켈레톤 처치 (30 코인)
execute if score @s kill_wither_skeleton matches 1.. run scoreboard players add @s coins 30
execute if score @s kill_wither_skeleton matches 1.. run tellraw @s {"text":"💰 +30 코인 (위더 스켈레톤 처치)","color":"gold"}
execute if score @s kill_wither_skeleton matches 1.. run scoreboard players reset @s kill_wither_skeleton

# 블레이즈 처치 (25 코인)
execute if score @s kill_blaze matches 1.. run scoreboard players add @s coins 25
execute if score @s kill_blaze matches 1.. run tellraw @s {"text":"💰 +25 코인 (블레이즈 처치)","color":"gold"}
execute if score @s kill_blaze matches 1.. run scoreboard players reset @s kill_blaze

# ========================================
# 지상 추가 몹
# ========================================

# 동굴 거미 처치 (12 코인)
execute if score @s kill_cave_spider matches 1.. run scoreboard players add @s coins 12
execute if score @s kill_cave_spider matches 1.. run tellraw @s {"text":"💰 +12 코인 (동굴 거미 처치)","color":"gold"}
execute if score @s kill_cave_spider matches 1.. run scoreboard players reset @s kill_cave_spider

# 허스크 처치 (12 코인)
execute if score @s kill_husk matches 1.. run scoreboard players add @s coins 12
execute if score @s kill_husk matches 1.. run tellraw @s {"text":"💰 +12 코인 (허스크 처치)","color":"gold"}
execute if score @s kill_husk matches 1.. run scoreboard players reset @s kill_husk

# 스트레이 처치 (12 코인)
execute if score @s kill_stray matches 1.. run scoreboard players add @s coins 12
execute if score @s kill_stray matches 1.. run tellraw @s {"text":"💰 +12 코인 (스트레이 처치)","color":"gold"}
execute if score @s kill_stray matches 1.. run scoreboard players reset @s kill_stray

# 마녀 처치 (35 코인)
execute if score @s kill_witch matches 1.. run scoreboard players add @s coins 35
execute if score @s kill_witch matches 1.. run tellraw @s {"text":"💰 +35 코인 (마녀 처치) 🧙","color":"gold"}
execute if score @s kill_witch matches 1.. run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
execute if score @s kill_witch matches 1.. run scoreboard players reset @s kill_witch

# 팬텀 처치 (20 코인)
execute if score @s kill_phantom matches 1.. run scoreboard players add @s coins 20
execute if score @s kill_phantom matches 1.. run tellraw @s {"text":"💰 +20 코인 (팬텀 처치) 👻","color":"gold"}
execute if score @s kill_phantom matches 1.. run scoreboard players reset @s kill_phantom

# ========================================
# 네더 추가 몹
# ========================================

# 마그마 큐브 처치 (15 코인)
execute if score @s kill_magma_cube matches 1.. run scoreboard players add @s coins 15
execute if score @s kill_magma_cube matches 1.. run tellraw @s {"text":"💰 +15 코인 (마그마 큐브 처치)","color":"gold"}
execute if score @s kill_magma_cube matches 1.. run scoreboard players reset @s kill_magma_cube

# 피글린 처치 (15 코인)
execute if score @s kill_piglin matches 1.. run scoreboard players add @s coins 15
execute if score @s kill_piglin matches 1.. run tellraw @s {"text":"💰 +15 코인 (피글린 처치)","color":"gold"}
execute if score @s kill_piglin matches 1.. run scoreboard players reset @s kill_piglin

# 피글린 브루트 처치 (40 코인)
execute if score @s kill_piglin_brute matches 1.. run scoreboard players add @s coins 40
execute if score @s kill_piglin_brute matches 1.. run tellraw @s {"text":"💰 +40 코인 (피글린 브루트 처치) 🗡️","color":"gold"}
execute if score @s kill_piglin_brute matches 1.. run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 1.5
execute if score @s kill_piglin_brute matches 1.. run scoreboard players reset @s kill_piglin_brute

# 가스트 처치 (30 코인)
execute if score @s kill_ghast matches 1.. run scoreboard players add @s coins 30
execute if score @s kill_ghast matches 1.. run tellraw @s {"text":"💰 +30 코인 (가스트 처치) 👁️","color":"gold"}
execute if score @s kill_ghast matches 1.. run scoreboard players reset @s kill_ghast

# ========================================
# 특수 몹
# ========================================

# 드라운드 처치 (15 코인)
execute if score @s kill_drowned matches 1.. run scoreboard players add @s coins 15
execute if score @s kill_drowned matches 1.. run tellraw @s {"text":"💰 +15 코인 (드라운드 처치)","color":"gold"}
execute if score @s kill_drowned matches 1.. run scoreboard players reset @s kill_drowned
