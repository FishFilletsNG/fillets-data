dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Squirrel - this is a notion that will be effective today widely talked about in the next few years in connection with interspace propulsion. This is also possible reason of UFO visits of the Earth.")
dialog_addDialog("dlg-x-poster1", "cs", "", "Veverka - to je pojem, který se ode dneška po několik příštích let bude skloňovat ve všech pádech v souvislosti s mezihvězdným pohonem. To je také možný důvod návštěvy Země ufem.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Yes, a few cases of squirrel kidnaps were reported in past 5 years, especially from Arizona, Utah and Southern Moravia, but no one really took them seriously. Now we know the whole appalling truth. Technical description is included.")
dialog_addDialog("dlg-x-poster2", "cs", "", "Ano, za posledních 5 let bylo hlášeno, obzvláště z Arizony, Utahu a Jižní Moravy několik případů únosu veverek, ale nikdo jim nevěnoval patřičnou pozornost. Teď známe celou otřesnou pravdu. Technický popis přiložen.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/propulsion/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planStop()

