dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "We recommend subject the enclosed material to thorough tests of holiness. Due to the lack of equipment we performed only the basic tests and the results are more than promising.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "Nous recommandons de faire subir le test de sainteté au matériel enfermé dans la caisse. Par manque d'équipement nous n'avons effectué que les tests préliminaires dont les résultats sont apparus très encourageants.")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Wir empfehlen, das beiliegende Material sorgfältig auf Heiligkeit zu prüfen. Aufgrund des Mangels an Ausrüstung führten wir nur grundlegende Tests durch. Die Ergebnisse sind mehr als vielversprechend.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Bombing some of the grails with ultradirty words, we measured sometimes even 3 Santa Clauses, some of them withstanded the circumstances pressure of 0.8 jobs for the period of one minute!")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster2", "fr", "", "font_poster", "En bombardant quelques uns des graals avec les pires gros mots, nous avons mesuré jusqu'à 3 niveau Saint, certains d'entre eux supportent la pression de 0.8 insulte par minutes.")
dialog_addDialog("dlg-x-poster2", "de", "", "font_poster", "Durch Bombardieren einiger der Grale mit ultraschmutzigen Wörtern maßen wir manchmal sogar drei Weihnachtsmänner, von denen einige dem Umgebungsdruck von 0,8 Hiobsbotschaften pro Minute widerstanden!")
dialog_addDialog("dlg-x-poster2", "de_CH", "", "font_poster", "Durch Bombardieren einiger der Grale mit ultraschmutzigen Wörtern massen wir manchmal sogar drei Weihnachtsmänner, von denen einige dem Umgebungsdruck von 0,8 Hiobsbotschaften pro Minute widerstanden!")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "It is also possible that we have encountered the whole Holy Service.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster3", "fr", "", "font_poster", "Il est aussi possible que nous ayons trouvé le service des objets saints.")
dialog_addDialog("dlg-x-poster3", "de", "", "font_poster", "Es ist auch möglich, dass wir auf das ganzen Heilige Tafelsilber gestoßen sind.")
dialog_addDialog("dlg-x-poster3", "de_CH", "", "font_poster", "Es ist auch möglich, dass wir auf das ganzen Heilige Tafelsilber gestossen sind.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/grail/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planStop()

