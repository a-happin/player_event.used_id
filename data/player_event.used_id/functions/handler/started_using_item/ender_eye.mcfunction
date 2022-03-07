#> player_event.used_id:handler/started_using_item/ender_eye
#@within function player_event.used_id:handler/started_using_item/

execute if entity @s[predicate=player_event.used_id:has_ender_eye/mainhand] run advancement grant @s only player_event.used_id:using_item mainhand
execute if entity @s[advancements={player_event.used_id:using_item=false},predicate=player_event.used_id:has_ender_eye/offhand] run advancement grant @s only player_event.used_id:using_item offhand
