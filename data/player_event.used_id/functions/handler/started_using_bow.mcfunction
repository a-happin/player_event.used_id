#> player_event.used_id:handler/started_using_bow
#@within function player_event.used_id:handler/started_using_item

execute if entity @s[advancements={player_event.used_id:using_bow=true}] run advancement revoke @s only player_event.used_id:using_bow
execute if entity @s[predicate=player_event.used_id:has_bow/mainhand] run advancement grant @s only player_event.used_id:using_bow mainhand
execute if entity @s[advancements={player_event.used_id:using_bow=false},predicate=player_event.used_id:has_bow/offhand] run advancement grant @s only player_event.used_id:using_bow offhand

execute if entity @s[advancements={player_event.used_id:using_bow={offhand=true}}] run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[advancements={player_event.used_id:using_bow={mainhand=true}}] run data get entity @s SelectedItem.tag.id
