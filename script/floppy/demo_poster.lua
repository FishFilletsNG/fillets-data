dialog_addDialog("dlg-x-poster1", "en", "", "font_orange", "THE GREATEST EARTHQUAKE SINCE 1990")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_orange", "LE PLUS GRAND TREMBLEMENT DE TERRE DEPUIS 1990")

dialog_addDialog("dlg-x-poster2", "en", "", "font_orange", "when Dragon's Lair was issued, Rules for beginners, version 1.0.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster2", "fr", "", "font_orange", "date de la publication de Dragon's Lair, Règles pour les débuttants, version 1.0.")

dialog_addDialog("dlg-x-poster3", "en", "", "font_orange", "DRAGON'S LAIR PLUS")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_orange", "")

dialog_addDialog("dlg-x-poster4", "en", "", "font_orange", "The world of role-playing games will soon change forever.")
dialog_addDialog("dlg-x-poster4", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster4", "fr", "", "font_orange", "Le monde du jeu de rôle sera transformé à jamais.")

dialog_addDialog("dlg-x-poster5", "en", "", "font_orange", "Dragon's Lair Plus is not only a new version.")
dialog_addDialog("dlg-x-poster5", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster5", "fr", "", "font_orange", "Dragon's Lair Plus n'est pas une simple nouvelle version.")

dialog_addDialog("dlg-x-poster6", "en", "", "font_orange", "It's a new game.")
dialog_addDialog("dlg-x-poster6", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster6", "fr", "", "font_orange", "C'est un nouveau jeu.")

dialog_addDialog("dlg-x-poster7", "en", "", "font_orange", "Plenty of new possibilities. New occupations. New system of character creation, where, instead of your lives, your skills grow. New elegant mechanism of playing.")
dialog_addDialog("dlg-x-poster7", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster7", "fr", "", "font_orange", "De nombreuses nouvelles possibilités. Nouvelles carrières. Nouveau système de création des personnages, avec augmentations des compétences. Nouveau mécanisme de jeu intuituf.")

dialog_addDialog("dlg-x-poster8", "en", "", "font_orange", "A game for 21. century.")
dialog_addDialog("dlg-x-poster8", "cs", "", "font_orange", "")
dialog_addDialog("dlg-x-poster8", "fr", "", "font_orange", "Un jeu pour le 21 siècle.")

dialog_addDialog("dlg-x-poster9", "en", "", "font_orange", "GAMES HAVE CHANGED")
dialog_addDialog("dlg-x-poster9", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster9", "fr", "", "font_orange", "LES JEUX DOIVENT CHANGER")

dialog_addDialog("dlg-x-poster10", "en", "", "font_poster", "This is what we get from the computer after inserting the waterproof diskette that was found during our investigation of secret criminal organisation.")
dialog_addDialog("dlg-x-poster10", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster10", "fr", "", "font_poster", "C'est ce que nous avons obtenu en insérant la disquette étanche que nous avons trouvée lors de nos investigations à propos d'une organisation secrète et criminelle.")

dialog_addDialog("dlg-x-poster11", "en", "", "font_poster", "We are shocked. Do not let journalists know it.")
dialog_addDialog("dlg-x-poster11", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster11", "fr", "", "font_poster", "Nous sommes abasourdis. Ne laissez pas les journalistes en prendre connaissance.")

dialog_addDialog("dlg-x-poster12", "en", "", "font_poster", "You must prevent the panic.")
dialog_addDialog("dlg-x-poster12", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster12", "fr", "", "font_poster", "Nous devons éviter la panique.")

dialog_addDialog("dlg-x-poster13", "en", "", "font_poster", "And subscribe two copies for us.")
dialog_addDialog("dlg-x-poster13", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster13", "fr", "", "font_poster", "Et commander deux copie pour nous.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/floppy/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planSpace()
planTalk("dlg-x-poster3")
planSpace()
planTalk("dlg-x-poster4")
planTalk("dlg-x-poster5")
planTalk("dlg-x-poster6")
planTalk("dlg-x-poster7")
planTalk("dlg-x-poster8")
planTalk("dlg-x-poster9")
planSpace()
planTalk("dlg-x-poster10")
planTalk("dlg-x-poster11")
planTalk("dlg-x-poster12")
planTalk("dlg-x-poster13")
planStop()

