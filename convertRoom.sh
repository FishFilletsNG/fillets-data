#!/bin/sh

ff2lua=../../ff2lua/ff2lua.py
prog2lua=../../ff2lua/prog2lua.py
dialogs=../../dialogs_converter/dialogs.py

codename=$1
if test -z $codename ; then
    echo "Usage: $0 codename" >&2
    exit 1
fi

mkdir -p "script/$codename" && \
$ff2lua "images/$codename/$codename.rum" >"script/$codename/models.lua" && \
$prog2lua "images/$codename/$codename.rum" >"script/$codename/code.lua" && \
$dialogs "sound/$codename/$codename.txt" >"script/$codename/dialogs.lua" && \
echo "file_include('script/level_funcs.lua')

codename = '$codename'

-- ---------------------------------------------------------------
-- Models
-- ---------------------------------------------------------------
file_include('script/'..codename..'/models.lua')


-- ---------------------------------------------------------------
-- Dialogs
-- ---------------------------------------------------------------
file_include('script/'..codename..'/dialogs.lua')


-- ---------------------------------------------------------------
-- Update
-- ---------------------------------------------------------------
file_include('script/'..codename..'/code.lua')
" >"script/$codename/$codename.lua"
