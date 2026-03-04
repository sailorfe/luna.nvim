import json
import os

theme = "luna"

with open("palette.json", "r") as f:
    raw_data = json.load(f)

c = {str(k).strip(): str(v).strip() for k, v in raw_data.items()}

bare = {k: v.lstrip('#') for k, v in c.items()}

targets = {
    "alacritty": {
        "path": f"extras/alacritty/{theme}.toml",
        "template": f"""
# Luna for Alacritty
# Author: sailorfe
# Upstream: https://codeberg.org/sailorfe/luna.nvim/src/branch/main/extras/alacritty/luna.toml

[colors.primary]
background = "{c['base']}"
foreground = "{c['text']}"

[colors.normal]
black = "{c['surface']}"
red   = "{c['rei']}"
green = "{c['makoto']}"
yellow = "{c['minako']}"
blue  = "{c['ami']}"
magenta  = "{c['hotaru']}"
cyan  = "{c['usagi']}"
white = "{c['text']}"

[colors.bright]
black = "{c['overlay']}"
red   = "{c['hino']}"
green = "{c['kino']}"
yellow = "{c['aino']}"
blue  = "{c['mizuno']}"
magenta  = "{c['tomoe']}"
cyan  = "{c['tsukino']}"
white = "{c['light']}"
"""
    },
    "foot": {
        "path": f"extras/foot/{theme}.ini",
        "template": f"""
# -*- luna -*-

[colors]
foreground={bare['text']}
background={bare['base']}
selection-background={bare['hotaru']}
selection-foreground={bare['base']}
urls={bare['ami']}
flash={bare['hotaru']}

regular0={bare['surface']}
regular1={bare['rei']}
regular2={bare['makoto']}
regular3={bare['minako']}
regular4={bare['ami']}
regular5={bare['hotaru']}
regular6={bare['usagi']}
regular7={bare['text']}

bright0={bare['overlay']}
bright1={bare['hino']}
bright2={bare['kino']}
bright3={bare['aino']}
bright4={bare['mizuno']}
bright5={bare['tomoe']}
bright6={bare['tsukino']}
bright7={bare['light']}
"""
    },
    "json": {
            "path": f"extras/{theme}.json",
            "template": f"""
{{
    "background": "{c['base']}",
    "foreground": "{c['text']}",
    "black": "{c['surface']}",
    "red": "{c['rei']}",
    "green": "{c['makoto']}",
    "yellow": "{c['minako']}",
    "blue": "{c['ami']}",
    "magenta": "{c['hotaru']}",
    "cyan": "{c['usagi']}",
    "white": "{c['text']}",
    "brightBlack": "{c['overlay']}",
    "brightRed": "{c['hino']}",
    "brightGreen": "{c['kino']}",
    "brightYellow": "{c['aino']}",
    "brightBlue": "{c['mizuno']}",
    "brightMagenta": "{c['tomoe']}",
    "brightCyan": "{c['tsukino']}",
    "brightWhite": "{c['light']}"
}}
"""
    },
    "termux": {
            "path": f"extras/termux/{theme}.properties",
            "template": f"""
# Luna for Termux
# Author: sailorfe
# Upstream: https://codeberg.org/sailorfe/luna.nvim/src/branch/main/extras/termux/luna.properties

background: {c['base']}
foreground: {c['text']}

color0: {c['surface']}
color1: {c['rei']}
color2: {c['makoto']}
color3: {c['minako']}
color4: {c['ami']}
color5: {c['hotaru']}
color6: {c['usagi']}
color7: {c['text']}

color8: {c['overlay']}
color9: {c['hino']}
color10: {c['kino']}
color11: {c['aino']}
color12: {c['mizuno']}
color13: {c['tomoe']}
color14: {c['tsukino']}
color15: {c['light']}
"""
    },
    "tty": {
            "path": f"extras/tty/{theme}-colors.conf",
            "template": f"""
# -*- luna tty colors -*-

if [ "$TERM" = "linux" ]; then
    echo -en "\\x1b]P0{bare['base']}"
    echo -en "\\x1b]P1{bare['rei']}"
    echo -en "\\x1b]P2{bare['makoto']}"
    echo -en "\\x1b]P3{bare['minako']}"
    echo -en "\\x1b]P4{bare['ami']}"
    echo -en "\\x1b]P5{bare['hotaru']}"
    echo -en "\\x1b]P6{bare['usagi']}"
    echo -en "\\x1b]P7{bare['light']}"
    echo -en "\\x1b]P8{bare['overlay']}"
    echo -en "\\x1b]P9{bare['hino']}"
    echo -en "\\x1b]PA{bare['kino']}"
    echo -en "\\x1b]PB{bare['aino']}"
    echo -en "\\x1b]PC{bare['mizuno']}"
    echo -en "\\x1b]PD{bare['tomoe']}"
    echo -en "\\x1b]PE{bare['tsukino']}"
    echo -en "\\x1b]PF{bare['text']}"
    clear
fi
"""
    },
}

for app, data in targets.items():
    full_path = os.path.expanduser(data["path"])
    os.makedirs(os.path.dirname(full_path), exist_ok=True)
    with open(full_path, "w") as f:
        f.write(data["template"].strip())
    print(f"updated {app}")
