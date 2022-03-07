player_event.used_id
==

## Features

- This is an extension for [player_event](https://github.com/a-happin/player_event).
- When a player uses an item, `score @s player_event.used_id` will be the value of `tag.id` of the used item.

### Available
- bow
- carrot_on_a_stick
- crossbow
- knowledge_book
- shield
- warped_fungus_on_a_stick
- consumables (i.e., Items detectable by `advancement consume_item`)

### Scores

|Score|description|
|:--|:--|
|`score @s player_event.used_id`|the value of `tag.id` of the used item|

#### available in

- `#player:consume_item`<br>
- `#player:shot_crossbow`<br>
- `#player:used.bow`<br>
- `#player:used.carrot_on_a_stick`<br>
- `#player:used.knowledge_book`<br>
- `#player:used.shield`<br>
- `#player:used.warped_fungus_on_a_stick`<br>

## Usage

- Please load before the datapack where your event handler is defined.

## Requirement

- [player_event](https://github.com/a-happin/player_event)

## Installation

## License
Creative Commons Zero v1.0 Universal
