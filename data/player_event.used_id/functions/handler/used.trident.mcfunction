#> player_event.used_id:handler/used.trident
#@within tag/function player:used.trident

execute if entity @s[advancements={player_event.used_id:using_trident={unknown=true}},predicate=player_event.used_id:has_air/offhand] run advancement grant @s only player_event.used_id:using_trident offhand
execute if entity @s[advancements={player_event.used_id:using_trident={unknown=true,offhand=false}},gamemode=creative,predicate=!player_event.used_id:has_trident/mainhand] run advancement grant @s only player_event.used_id:using_trident offhand
execute if entity @s[advancements={player_event.used_id:using_trident={unknown=true,offhand=false}}] run advancement grant @s only player_event.used_id:using_trident mainhand
execute if entity @s[advancements={player_event.used_id:using_trident={offhand=true}},predicate=player_event.used_id:has_air/offhand] run function #player_event.used_id:calc_used_id
execute if entity @s[advancements={player_event.used_id:using_trident={mainhand=true}},predicate=player_event.used_id:has_air/mainhand] run function #player_event.used_id:calc_used_id
execute if entity @s[advancements={player_event.used_id:using_trident={offhand=true}},predicate=player_event.used_id:has_trident/offhand] store result score @s player_event.used_id run data get entity @s Inventory[{Slot: -106b}].tag.id
execute if entity @s[advancements={player_event.used_id:using_trident={mainhand=true}},predicate=player_event.used_id:has_trident/mainhand] store result score @s player_event.used_id run data get entity @s SelectedItem.tag.id
