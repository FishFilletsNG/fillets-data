-- There is place to customize game before start

--NOTE: hack for win32, lang Czech = cs
local lang = getParam("lang")
if lang == "Czech" then
    setParam("lang", "cs")
end

