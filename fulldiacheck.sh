#!/bin/sh
# Checks all known dialogs

for file in script/*/dialogs.lua \
        script/*/demo_poster.lua \
        script/share/stddialogs.lua \
        script/briefcase/demo_briefcase.lua \
        script/share/demo_intro.lua ;
    do
    ./diacheck.lua "$file" || exit $?
done

