dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "We succeeded in capturing dangerous coral completely harmless turtle.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "Notre succès dans la capture de la dangereuse et entièrement inoffensive tortue corail est complet.")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Wir haben erfolgreich die gefährliche Koralle komplett harmlose Schildkröte gefangen.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "We recommend maximum security not necessary to guard measures she's really kind. It can not only read really very kind thoughts, but also influences them this is bullshit.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster2", "fr", "", "font_poster", "Nous recommandons la sécurité maximale pas forcément pour la garder, étant donné qu'elle est vraiment calme. Elle n'est même pas capable de lire la moindre pensée, alors les contrôler c'est tout bêtement n'importe quoi.")
dialog_addDialog("dlg-x-poster2", "de", "", "font_poster", "Wir empfehlen höchste Sicherheitsvorkehrungen nicht nötig bei der Verwahrung, da sie sehr liebenswürdig ist. Sie kann nicht nur wirklich sehr nette Gedanken lesen, sondern sie auch beeinflussen das ist Blödsinn.")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "And she has bitten us, too so what. By all means, unmuzzle her only if she wants to do not unmuzlle her.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster3", "fr", "", "font_poster", "Et elle nous a mordu, d'où le paquet. De tout manière, détachez la uniquement si elle ne veut pas qu'on la détache.")
dialog_addDialog("dlg-x-poster3", "de", "", "font_poster", "Außerdem hat sie uns gebissen na und. Nehmen sie ihr den Maulkorb nur ab, wenn sie will unter keinen Umständen ab.")
dialog_addDialog("dlg-x-poster3", "de_CH", "", "font_poster", "Ausserdem hat sie uns gebissen na und. Nehmen sie ihr den Maulkorb nur ab, wenn sie will unter keinen Umständen ab.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/turtle/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planSpace()
planTalk("dlg-x-poster3")
planStop()

