#> player_event.used_id:handler/started_using_trident
#@within function player_event.used_id:handler/started_using_item

execute if entity @s[advancements={player_event.used_id:using_trident=true}] run advancement revoke @s only player_event.used_id:using_trident
execute if entity @s[predicate=player_event.used_id:has_trident/mainhand,predicate=player_event.used_id:has_trident/offhand] run advancement grant @s only player_event.used_id:using_trident unknown
execute if entity @s[advancements={player_event.used_id:using_trident=false},predicate=!player_event.used_id:has_trident/mainhand] run advancement grant @s only player_event.used_id:using_trident offhand
execute if entity @s[advancements={player_event.used_id:using_trident=false}] run advancement grant @s only player_event.used_id:using_trident mainhand
