# 모든 플레이어 각자 기준으로 실행 (멀티 대응)
execute as @a at @s store result score " §aX§f:" coord_display run data get entity @s Pos[0] 1000
execute as @a at @s store result score " §aY§f:" coord_display run data get entity @s Pos[1] 1000
execute as @a at @s store result score " §aZ§f:" coord_display run data get entity @s Pos[2] 1000
