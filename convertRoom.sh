#!/bin/sh

ff2lua=../ff2lua/ff2lua.py
prog2lua=../ff2lua/prog2lua.py
dialogs=../dialogs_converter/dialogs.py

codename=$1
if test -z $codename ; then
    echo "Usage: $0 codename" >&2
    exit 1
fi

MUSIC=`sed -n "/^$codename / s/[^ ]*[ ]*\([^ ]*\).*/\1/ p" music/music.txt`

mkdir -p "script/$codename" && \
$ff2lua "images/$codename/$codename.rum" >"script/$codename/models.lua"
$prog2lua "images/$codename/$codename.rum" | sed s/FIXME:music.ogg/$MUSIC/ >"script/$codename/code.tmp"

if [ ! -f script/$codename/code.lua ]; then
	cp script/$codename/code.tmp script/$codename/code.lua
fi

$dialogs "sound/$codename/$codename.txt" >"script/$codename/dialogs.lua"


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
" >"script/$codename/init.lua"

