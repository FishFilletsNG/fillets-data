dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "THE GREATEST EARTHQUAKE SINCE 1990")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "NEJVĚTŠÍ ZEMĚTŘESENÍ OD ROKU 1990")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "when Dungeons & Dragons was issued, Rules for beginners, version 1.0.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "kdy vyšlo Dračí doupě, Pravidla pro začátečníky, verze 1.0.")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "DUNGEONS & DRAGONS PLUS")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "DRAČÍ DOUPĚ PLUS")

dialog_addDialog("dlg-x-poster4", "en", "", "font_poster", "The world of role-playing games will soon change forever.")
dialog_addDialog("dlg-x-poster4", "cs", "", "font_poster", "Již brzy se svět her na hrdiny změní navždy.")

dialog_addDialog("dlg-x-poster5", "en", "", "font_poster", "Dungeons & Dragons Plus is not only a new version.")
dialog_addDialog("dlg-x-poster5", "cs", "", "font_poster", "Dračí doupě plus není jen nová verze.")

dialog_addDialog("dlg-x-poster6", "en", "", "font_poster", "It's a new game.")
dialog_addDialog("dlg-x-poster6", "cs", "", "font_poster", "Je to nová hra.")

dialog_addDialog("dlg-x-poster7", "en", "", "font_poster", "Plenty of new possibilities. New occupations. New system of character creation, where, instead of your lives, your skills grow. New elegant mechanism of playing.")
dialog_addDialog("dlg-x-poster7", "cs", "", "font_poster", "Spousta nových možností. Nová povolání. Nový systém tvorby postavy, kde rostou tvoje vlastnosti místo životů. Nový elegantní herní mechanismus.")

dialog_addDialog("dlg-x-poster8", "en", "", "font_poster", "A game for 21. century.")
dialog_addDialog("dlg-x-poster8", "cs", "", "font_poster", "Hra pro 21. století.")

dialog_addDialog("dlg-x-poster9", "en", "", "font_poster", "GAMES HAVE CHANGED")
dialog_addDialog("dlg-x-poster9", "cs", "", "font_poster", "HRY SE ZMĚNILY")

dialog_addDialog("dlg-x-poster10", "en", "", "font_poster", "This is what we get from the computer after inserting the waterproof diskette that was found during our investigation of secret criminal organisation.")
dialog_addDialog("dlg-x-poster10", "cs", "", "font_poster", "Tohle nám vyjelo z počítače po vložení vodovzdorné diskety nalezené při pátrání po tajné zločinné organizaci.")

dialog_addDialog("dlg-x-poster11", "en", "", "font_poster", "We are shocked. Do not let journalists know it.")
dialog_addDialog("dlg-x-poster11", "cs", "", "font_poster", "Jsme šokování. Nedovolte, aby se to dozvěděli novináři.")

dialog_addDialog("dlg-x-poster12", "en", "", "font_poster", "You must prevent the panic.")
dialog_addDialog("dlg-x-poster12", "cs", "", "font_poster", "Musíme zabránit panice.")

dialog_addDialog("dlg-x-poster13", "en", "", "font_poster", "And subscribe two copies for us.")
dialog_addDialog("dlg-x-poster13", "cs", "", "font_poster", "A předplaťte nám dva výtisky.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/floppy/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planTalk("dlg-x-poster4")
planTalk("dlg-x-poster5")
planTalk("dlg-x-poster6")
planTalk("dlg-x-poster7")
planTalk("dlg-x-poster8")
planTalk("dlg-x-poster9")
planTalk("dlg-x-poster10")
planTalk("dlg-x-poster11")
planTalk("dlg-x-poster12")
planTalk("dlg-x-poster13")
planStop()

