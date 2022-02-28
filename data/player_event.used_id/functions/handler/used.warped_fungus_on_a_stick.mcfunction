#> player_event.used_id:handler/used.warped_fungus_on_a_stick
#@within tag/function player:used.warped_fungus_on_a_stick

execute if entity @s[predicate=!player_event.used_id:has_warped_fungus_on_a_stick/mainhand,predicate=player_event.used_id:has_warped_fungus_on_a_stick/offhand] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[predicate=player_event.used_id:has_warped_fungus_on_a_stick/mainhand] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
