#!/usr/bin/env zsh

if [[ $# -eq 0 ]]; then
    cat <<HELP
Key summon command generator and copier.

-h, --heretic           Generate command to summon all Heretic keys
-x, --hexen             Generate command to summon all Hexen keys
-d, --doom              Generate command to summon all Doom keys

NOTE: xclip is needed in order for this script to work properly.
HELP
fi

if [[ $1 == "-h" || $1 == "--heretic" ]]; then
    print -n summon\ key{green,blue,yellow}\; | xclip -i -selection c
elif [[ $1 == "-x" || $1 == "--hexen" ]]; then
    print -n summon\ key{steel,cave,axe,fire,emerald,dungeon,silver,rusted,horn,swamp,castle}\; | xclip -i -selection c
elif [[ $1 == "-d" || $1 == "--doom" ]]; then
    print -n summon\ {red,blue,yellow}{card,skull}\; | xclip -i -selection c
fi