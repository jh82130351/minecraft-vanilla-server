# 기존 objective 제거 후 재생성 (리로드 안전)
scoreboard objectives remove coord_display
scoreboard objectives add coord_display dummy
scoreboard objectives setdisplay sidebar coord_display

# 헤더
scoreboard players set "§6§l [ 좌표 ]" coord_display 0
scoreboard players set "§7━━━━━━━━━━━━━━━" coord_display 0

# 좌표
scoreboard players set " §aX§f:" coord_display 0
scoreboard players set " §aY§f:" coord_display 0
scoreboard players set " §aZ§f:" coord_display 0

say [CoordDisplay] 로드 완료!
