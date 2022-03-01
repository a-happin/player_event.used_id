#> player_event.used_id:calc_sum_id/3
#@within function player_event.used_id:calc_sum_id/

execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 3b}].tag.id
scoreboard players operation @s player_event.sum_id += $ player_event.sum_id
