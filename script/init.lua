-- There is place to customize game before start

--NOTE: hack for win32, lang Czech = cs
--NOTE: first five characters from LC_CTYPE are stored in "lang" param
local lang = string.sub(getParam("lang") or "", 1, 5)
local winCodes = {
    Czech = "cs",
    Engli = "en",
    Frenc = "fr",
    Germa = "de",
    Itali = "it",
    Polis = "pl",
    Spani = "es",
    Dutch = "nl",
}

if winCodes[lang] then
    setParam("lang", winCodes[lang])
end

--NOTE: default speech is 'cs' (there are cs/*.ogg files)
if getParam("speech") == nil then
    setParam("speech", "cs")
end

