dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Occupation of the captive we are sending to you is an ocean god. Except of the plane and ship disappearings (so called Sea Battle case) he is responsible for the other crimes as well, moving the continents (code name Run, continent, run) and meteorite in Tunguzka (code Jumping Jack) are among them.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "La profession du captif que nous vous avons envoyé est dieu de l'océan. En plus de la disparition des bateaux et avions (aussi appelé bataille navale) il est responsable de bien d'autres crimes, parmi eux le déplacement des continents (nom de code Run, continent, run) ou encore la météorite de Tunguzka (code Jumping Jack).")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "We managed to intervene just in the nick of time: we have found a brand new unwrapped box with a table game called STAR WARS in the captive's house.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster2", "fr", "", "font_poster", "Nous sommes intervenus juste à temps : nous avons trouvé tout juste déballée, une boite contenant le jeu de plateau STAR WARS dans la maison du prisonnier.")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "You can find the records of his sea battles in the attachement.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster3", "fr", "", "font_poster", "Vous trouverez les enregistrements de ses batailles navales en annexes.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/gods/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planStop()

