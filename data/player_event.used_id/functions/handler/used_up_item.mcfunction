#> player_event.used_id:handler/used_up_item
#@within tag/function player:used_up_item

advancement grant @s only player_event.used_id:used_up_item
schedule function player_event.used_id:revoke/used_up_item 1t replace
