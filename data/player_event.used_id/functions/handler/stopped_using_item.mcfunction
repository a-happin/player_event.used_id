#> player_event.used_id:handler/stopped_using_item
#@within tag/function player:stopped_using_item

execute if entity @s[advancements={player_event.used_id:using_item=true}] run advancement revoke @s only player_event.used_id:using_item
