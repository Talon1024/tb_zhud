#!/usr/bin/env zsh

if [[ -f ../Trailblazer_v1.4a_zshud.pk3 ]] then rm ../Trailblazer_v1.4a_zshud.pk3; fi
setopt extendedglob
print -l (#i)**/*~*.sh~*.zip~*.pk3(#q.) | zip -@ ../Trailblazer_v1.4a_zshud.pk3 
setopt noextendedglob