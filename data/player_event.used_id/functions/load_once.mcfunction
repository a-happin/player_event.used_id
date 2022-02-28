#> player_event.used_id:load_once
#@within tag/function load_once

#>
#@public
  scoreboard objectives add player_event.used_id dummy

#>
#@within * player_event.used_id:**
  scoreboard objectives add player_event.sum_id dummy
