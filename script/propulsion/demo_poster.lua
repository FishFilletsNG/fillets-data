dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Squirrel - this is a notion that will be effective today widely talked about in the next few years in connection with interspace propulsion. This is also possible reason of UFO visits of the Earth.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "Un écureuil - Cette notion va effectivement apparaître comme fondamentale dans les prochaines années en ce qui concerne la propulsion intersidérale. C'est aussi la raison probable pour laquelle les ovnis viennent sur terre.")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Eichhörnchen - das ist ein heutzutage ein vieldiskutierter Begriff, über den in den nächsten Jahren im Zusammenhang mit interstellarem Antrieb geredet wird. Das ist auch ein wahrscheinlicher Grund für die UFO-Besuche auf der Erde.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Yes, a few cases of squirrel kidnaps were reported in past 5 years, especially from Arizona, Utah and Southern Moravia, but no one really took them seriously. Now we know the whole appalling truth. Technical description is included.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster2", "fr", "", "font_poster", "Oui, plusieurs cas d'écureuils kidnappés ont été enregistrés dans les cinq dernières années, spécialement en Arizona, Utah et en Moravie du sud. Mais personne ne les a pris au sérieux. Maintenant nous connaissons l'effroyable et entière vérité. La description technique est incluse.")
dialog_addDialog("dlg-x-poster2", "de", "", "font_poster", "Ja, von ein paar Eichhörnchen-Entführungen wurden in den letzten fünf Jahren berichtet, besonders aus Arizona, Utah und dem Schwarzwald, aber niemand hat sie wirklich ernstgenommen. Jetzt kennen wir die ganze schreckliche Wahrheit. Technische Beschreibung liegt bei.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/propulsion/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planStop()

