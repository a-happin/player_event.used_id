#> player_event.used_id:handler/shot_crossbow
#@within tag/function player:shot_crossbow

execute if entity @s[advancements={player_event.used_id:used_up_item=true}] run function #player_event.used_id:calc_used_id
execute if entity @s[advancements={player_event.used_id:used_up_item=false},predicate=!player_event.used_id:has_crossbow/mainhand,predicate=player_event.used_id:has_crossbow/offhand] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[advancements={player_event.used_id:used_up_item=false},predicate=player_event.used_id:has_crossbow/mainhand] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
