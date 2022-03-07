#> player_event.used_id:handler/used.shield
#@within tag/function player:used.shield

execute if entity @s[advancements={player_event.used_id:used_up_item=true}] run function #player_event.used_id:calc_used_id
execute if entity @s[advancements={player_event.used_id:used_up_item=false,player_event.used_id:using_item={offhand=true}}] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[advancements={player_event.used_id:used_up_item=false,player_event.used_id:using_item={mainhand=true}}] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
