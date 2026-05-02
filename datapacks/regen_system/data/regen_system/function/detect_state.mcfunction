# ============================================
# detect_state.mcfunction — 이동 상태 감지 및 회복
# ============================================
# 매 틱마다 타이머 증가 (상태 전환 시에도 연속성 유지)
scoreboard players add @s regen_timer 1

# 0. 현재 좌표 저장 (나중에 prev 업데이트용)
execute store result score @s regen_tmp0 run data get entity @s Pos[0] 1000
execute store result score @s regen_tmp1 run data get entity @s Pos[1] 1000
execute store result score @s regen_tmp2 run data get entity @s Pos[2] 1000

# 1. 수면 감지 (SLEEP — 우선순위 최상)
execute if entity @s[nbt={Sleeping:1b}] run scoreboard players set @s regen_state 0
execute if entity @s[nbt={Sleeping:1b}] run function regen_system:regen_sleep
execute if entity @s[nbt={Sleeping:1b}] run return fail

# 2. 수영 감지
execute if entity @s[nbt={IsInWater:1b}] run scoreboard players set @s regen_state 3
execute if entity @s[nbt={IsInWater:1b}] run function regen_system:regen_swim
execute if entity @s[nbt={IsInWater:1b}] run return fail

# 3. 속도로 IDLE/RUN/WALK 판단 (Motion xz 크기)
# 걷기: Motion xz 합 약 0.1~0.3, 스프린트: 0.4~0.7, 정지: 0

# x 속도 저장 (1000배)
execute store result score @s regen_tmp0 run data get entity @s Motion[0] 1000
# z 속도 저장 (1000배)
execute store result score @s regen_tmp2 run data get entity @s Motion[2] 1000

# |x| + |z| 로 속력 계산 (절대값)
execute if score @s regen_tmp0 < @s const_0 run scoreboard players operation @s regen_tmp0 *= @s const_n1
execute if score @s regen_tmp2 < @s const_0 run scoreboard players operation @s regen_tmp2 *= @s const_n1

# 속력 합산
scoreboard players operation @s regen_tmp0 += @s regen_tmp2

# RUN (스프린트): 속력 400 이상 (Motion 0.4)
execute if score @s regen_tmp0 matches 400.. run scoreboard players set @s regen_state 2
execute if score @s regen_tmp0 matches 400.. run scoreboard players set @s regen_timer 0
execute if score @s regen_tmp0 matches 400.. run return fail

# WALK: 속력 1 이상 (움직임 있음)
execute if score @s regen_tmp0 matches 1.. run scoreboard players set @s regen_state 4
execute if score @s regen_tmp0 matches 1.. run function regen_system:regen_walk
execute if score @s regen_tmp0 matches 1.. run return fail

# IDLE: 속력 0 (움직임 없음)
scoreboard players set @s regen_state 1
function regen_system:regen_idle
