dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "We succeeded in discovering the right cause of sinking the city. It was a well known artifact called atlantic relief, up to now considered by mistake to be a depiction of extraterrestrial visit, that gave us a hint. At the same time,  we recommend increasing the surveillance of the plugs on all continents and bigger islands in order not to repeat similar awkward catastrophe again.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "Nous avons réussi à découvrir pourquoi la cité a sombré. C'est l'antiquité bien connue sous le nom d'ancrage Atlantique, jusqu'ici considérée à tort d'être la trace de visite extraterrestre, qui nous a donné la puce à l'oreille. En même temps nous recommandons la plus grande vigilance vis-à-vis des bouchons de tous les continents et des plus grandes îles, dans le but d'éviter de nouvelles catastrophes si embarrassantes.")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Wir haben den wahren Grund für den Untergang der Stadt aufgedeckt. Es war ein gutbekannter Artefakt, genannt das Atlantische Relief, fälschlicherweise bis jetzt für eine Darstellung außerirdischen Besuches gehalten, der uns den Hinweis gab. Gleichzeitig empfehlen wir die Überwachung der Stöpsel auf allen Kontinenten und größeren Inseln zu erhöhen, damit sich solche unangenehmen Katastrophen nicht wiederholen.")
dialog_addDialog("dlg-x-poster1", "de_CH", "", "font_poster", "Wir haben den wahren Grund für den Untergang der Stadt aufgedeckt. Es war ein gutbekannter Artefakt, genannt das Atlantische Relief, fälschlicherweise bis jetzt für eine Darstellung ausserirdischen Besuches gehalten, der uns den Hinweis gab. Gleichzeitig empfehlen wir die Überwachung der Stöpsel auf allen Kontinenten und grösseren Inseln zu erhöhen, damit sich solche unangenehmen Katastrophen nicht wiederholen.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/atlantis/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planStop()

