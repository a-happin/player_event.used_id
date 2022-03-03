#> player_event.used_id:handler/consume_item
#@within tag/function player:consume_item

execute if entity @s[advancements={player_event.used_id:using_item={offhand=true}}] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[advancements={player_event.used_id:using_item={mainhand=true}}] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
