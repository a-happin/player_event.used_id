#> player_event.used_id:calc_sum_id
#@within
#  tag/function player:inventory_changed
#  tag/function player_event.used_id:calc_used_id

#>
#@private
  #declare storage :
  #declare score_holder $

data modify storage : _ append value {}
  data modify storage : _[-1].Inventory set from entity @s Inventory
  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 0b}].tag.id
  scoreboard players operation @s player_event.sum_id = $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 1b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 2b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 3b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 4b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 5b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 6b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 7b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: 8b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id

  execute store result score $ player_event.sum_id run data get storage : _[-1].Inventory[{Slot: -106b}].tag.id
  scoreboard players operation @s player_event.sum_id += $ player_event.sum_id
data remove storage : _[-1]
