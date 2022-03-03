#> player_event.used_id:handler/started_using_consumables_if_hungry
#@within function player_event.used_id:handler/started_using_item

execute if entity @s[predicate=player_event.used_id:has_consumables_if_hungry/mainhand] run advancement grant @s only player_event.used_id:using_item mainhand
execute if entity @s[advancements={player_event.used_id:using_item=false},predicate=player_event.used_id:has_consumables_if_hungry/offhand] run advancement grant @s only player_event.used_id:using_item offhand
