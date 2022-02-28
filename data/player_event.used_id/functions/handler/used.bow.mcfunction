#> player_event.used_id:handler/used.bow
#@within tag/function player:used.bow

execute if entity @s[advancements={player_event.used_id:used_up_item=true}] run function #player_event.used_id:calc_used_id
execute if entity @s[advancements={player_event.used_id:used_up_item=false,player_event.used_id:using_bow={offhand=true}}] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[advancements={player_event.used_id:used_up_item=false,player_event.used_id:using_bow={mainhand=true}}] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
