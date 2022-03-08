#> player_event.used_id:handler/entity_hurt_player
#@within tag/function player:entity_hurt_player

execute if entity @s[advancements={player_event:handler/entity_hurt_player={blocked=true}}] run function player_event.used_id:handler/used.shield
