# regen_system 로드 — 리로드 안전
scoreboard objectives remove regen_timer
scoreboard objectives add regen_timer dummy
scoreboard objectives remove food_lvl
scoreboard objectives add food_lvl dummy

# 사이드바 완전 제거 (혹시 남아있을 캐시 삭제)
scoreboard objectives setdisplay sidebar

say [RegenSystem] 로드 완료!
