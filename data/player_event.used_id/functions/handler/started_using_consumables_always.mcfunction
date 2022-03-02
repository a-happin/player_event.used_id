#> player_event.used_id:handler/started_using_consumables_always
#@within function player_event.used_id:handler/started_using_item

execute if entity @s[advancements={player_event.used_id:using_consumables=true}] run advancement revoke @s only player_event.used_id:using_consumables
execute if entity @s[predicate=player_event.used_id:has_consumables_always/mainhand] run advancement grant @s only player_event.used_id:using_consumables mainhand
execute if entity @s[advancements={player_event.used_id:using_consumables=false},predicate=player_event.used_id:has_consumables_always/offhand] run advancement grant @s only player_event.used_id:using_consumables offhand
