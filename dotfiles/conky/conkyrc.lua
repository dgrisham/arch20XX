-- vim: ts=4 sw=4 noet ai cindent syntax=lua
--[[
Conky, a system monitor, based on torsmo

Any original torsmo code is licensed under the BSD license

All code written since the fork of torsmo is licensed under the GPL

Please see COPYING for details

Copyright (c) 2004, Hannu Saransaari and Lauri Hakkarainen
Copyright (c) 2005-2012 Brenden Matthews, Philip Kovacs, et. al. (see AUTHORS)
All rights reserved.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]

-- user variables
local wlandev = 'wlan0'
local ethdev = 'eth0'
local ci = color_indicator_bright

-- template variables: Color Indicator
local color_indicator_dark = {
  good      = '#909737',
  degraded  = '#b27d12',
  bad       = '#802828'
}

local color_indicator_bright = {
  good      = '#202080',
  degraded  = '#802080',
  bad       = '#802020'
}

conky.config = {
    background = false,
    out_to_x = false,
    out_to_console = true,
    update_interval = 1,
    total_run_times = 0,
    use_spacer = "none",
    --own_window yes,
    --own_window_type normal,
    --own_window_transparent no,
    --own_window_hints undecorated,below,skip_taskbar,skip_pager,
    --own_window_argb_visual yes,
    --own_window_argb_value 180,
}

conky.text = [[
[
# MPD
${if_mpd_playing}
    {"full_text":"♫", "color":"\#ffffff",
     "separator":false, "separator_block_width":6},
    {"full_text":"${mpd_artist 27}", "color" : "\#888888",
     "separator" : false, "separator_block_width":3 },
    {"full_text":" - ", "color" : "\#888888",
     "separator" : false, "separator_block_width":3 },
    {"full_text":"${mpd_title 30}", "color" : "\#888888",
     "separator" : false, "separator_block_width":6 },
    {"full_text":"|", "color":"\#545454",
     "separator":false, "separator_block_width":6},
${endif}
#{"full_text":"${exec mpc -f %artist% status | head -n1 | sed 's/\(\w\)\w*\( \|$\)/\1/g'}", "color" : "\#5c5dad",

# Network
${if_existing /sys/class/net/eth0/operstate up}
    {"full_text":"eth0 up", "color":"\#dddddd",
     "separator":false, "separator_block_width":6},
    {"full_text":"|", "color":"\#545454",
     "separator":false, "separator_block_width":6},
${endif}
${if_existing /sys/class/net/wlan0/operstate up}
    {"full_text":"wlan0 up", "color":"\#ffffff",
     "separator":false, "separator_block_width":6},
    {"full_text":"|", "color":"\#545454",
     "separator":false, "separator_block_width":6},
${endif}

# Battery
{"full_text":"${exec cat /sys/class/power_supply/BAT0/status | cut -c1-3 | tr '/a-z/' '/A-Z/'}", "color":"\#aaaaaa",
 "separator":false, "separator_block_width":6 },
{"full_text":"${battery_percent BAT0}%", "color":"\#aaaaaa",
 "separator":false, "separator_block_width":6 },
{"full_text":"|", "color":"\#545454",
 "separator":false, "separator_block_width":6},

# Time:
    {"full_text":"${time %m-%d}", "color":"\#bfbfbf",
     "separator":false, "separator_block_width":6},
    {"full_text":"${time %H:%M }", "color":"\#cccccc",
     "separator":false, "separator_block_width":0 },

# Autoupdate state
${if_match ${exec systemctl status autoupdate | grep -P 'Main PID:[^\n]*SUCCESS' | wc -l} == 1}
    {"full_text":"✔", "color":"\#aaaaaa",
     "separator":false, "separator_block_width":0}
${else}
${if_match ${exec systemctl status autoupdate | grep -P 'Main PID:[^\n]*FAILURE' | wc -l} == 1}
    {"full_text":"✕", "color":"\#ee1111",
     "separator":false, "separator_block_width":0}
${else}
    {"full_text":"?", "color":"\#777777",
     "separator":false, "separator_block_width":0}
${endif}
${endif}
],
]]

-- conky.text = [[
-- [
-- # MPD
-- ${if_mpd_playing}
--     {"full_text":"♫", "color":"\#c9c925",
--      "separator":false, "separator_block_width":6},
--     {"full_text":"${mpd_artist 27}", "color" : "\#374B85",
--      "separator" : false, "separator_block_width":3 },
--     {"full_text":" - ", "color" : "\#909737",
--      "separator" : false, "separator_block_width":3 },
--     {"full_text":"${mpd_title 30}", "color" : "\#545454",
--      "separator" : false, "separator_block_width":6 },
--     {"full_text":"|", "color":"\#545454",
--      "separator":false, "separator_block_width":6},
-- ${endif}
-- #{"full_text":"${exec mpc -f %artist% status | head -n1 | sed 's/\(\w\)\w*\( \|$\)/\1/g'}", "color" : "\#5c5dad",

-- # Network
-- ${if_existing /sys/class/net/eth0/operstate up}
--     {"full_text":"eth0 up", "color":"\#00ff00",
--      "separator":false, "separator_block_width":6},
--     {"full_text":"|", "color":"\#545454",
--      "separator":false, "separator_block_width":6},
-- ${endif}
-- ${if_existing /sys/class/net/wlan0/operstate up}
--     {"full_text":"wlan0 up", "color":"\#00ff00",
--      "separator":false, "separator_block_width":6},
--     {"full_text":"|", "color":"\#545454",
--      "separator":false, "separator_block_width":6},
-- ${endif}

-- # Battery
-- {"full_text":"${exec cat /sys/class/power_supply/BAT0/status | cut -c1-3 | tr '/a-z/' '/A-Z/'}", "color":"\#aaaaaa",
--  "separator":false, "separator_block_width":6 },
-- {"full_text":"${battery_percent BAT0}%", "color":"\#aaaaaa",
--  "separator":false, "separator_block_width":6 },
-- {"full_text":"|", "color":"\#545454",
--  "separator":false, "separator_block_width":6},

-- # Time:
--     {"full_text":"${time %m-%d}", "color":"\#c30067",
--      "separator":false, "separator_block_width":6},
--     {"full_text":"${time %H:%M }", "color":"\#aaaaaa",
--      "separator":false, "separator_block_width":0 },

-- # Autoupdate state
-- ${if_match ${exec systemctl status autoupdate | grep -P 'Main PID:[^\n]*SUCCESS' | wc -l} == 1}
--     {"full_text":"✔", "color":"\#11ee11",
--      "separator":false, "separator_block_width":0}
-- ${else}
-- ${if_match ${exec systemctl status autoupdate | grep -P 'Main PID:[^\n]*FAILURE' | wc -l} == 1}
--     {"full_text":"✕", "color":"\#ee1111",
--      "separator":false, "separator_block_width":0}
-- ${else}
--     {"full_text":"?", "color":"\#777777",
--      "separator":false, "separator_block_width":0}
-- ${endif}
-- ${endif}
-- ],
-- ]]
