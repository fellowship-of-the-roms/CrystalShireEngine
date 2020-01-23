MACRO list_item
.__item\1
if (_NARG > 1)
	db .__item\2 - .__item\1
endc
ENDM

DEF current_list_item = 0

MACRO next_list_item
DEF next_list_item_index = current_list_item + 1
	list_item {d:current_list_item}, {d:next_list_item_index}
DEF current_list_item = next_list_item_index
ENDM

MACRO end_list_items
	list_item {d:current_list_item}
DEF current_list_item = 0
ENDM
