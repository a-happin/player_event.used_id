#> player_event.used_id:handler/used.knowledge_book
#@within tag/function player:used.knowledge_book

execute if entity @s[gamemode=!creative] run function #player_event.used_id:calc_used_id
execute if entity @s[gamemode=creative,predicate=!player_event.used_id:has_knowledge_book/mainhand,predicate=player_event.used_id:has_knowledge_book/offhand] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[gamemode=creative,predicate=player_event.used_id:has_knowledge_book/mainhand] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
