dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "After much hardship we succeeded in finding captain Silver's map. Initial enthusiasm afterwards changed into bitter disappointment, when we found out that the above mentioned map does not indicate the location of the treasure, but the place of residence of the last surviving Silver's parrot that, unfortunately, suffers from sclerosis and cannot remember, where the treasure is.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "Po mnoha útrapách se nám podařilo nalézt mapu kapitána Silvera. Počáteční nadšení však vystřídalo trpké zklamání, když jsme zjistili, že inkriminovaná mapa neukazuje polohu pokladu, ale označuje místo pobytu posledního přeživšího Silverova papouška, který má však pokročilou sklerózu a nemůže si vzpomenout, kde poklad je.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/map/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planStop()

