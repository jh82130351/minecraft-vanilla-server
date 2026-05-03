# 영역 선택 레이캐스트 시작
# has_pos1 확인 후 pos1 설정 또는 pos2 설정
execute if score @s has_pos1 matches 0 run function dev_tools:set_pos1
execute if score @s has_pos1 matches 1 run function dev_tools:set_pos2
