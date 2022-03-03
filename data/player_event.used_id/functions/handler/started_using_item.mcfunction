#> player_event.used_id:handler/started_using_item
#@within tag/function player:started_using_item

execute if entity @s[advancements={player_event.used_id:using_item=true}] run advancement revoke @s only player_event.used_id:using_item
execute if entity @s[advancements={player_event:handler/using_item={bow=true}}] run function player_event.used_id:handler/started_using_bow
execute if entity @s[advancements={player_event:handler/using_item={consumables_always=true}}] run function player_event.used_id:handler/started_using_consumables_always
execute if entity @s[advancements={player_event:handler/using_item={consumables_if_hungry=true}}] run function player_event.used_id:handler/started_using_consumables_if_hungry
