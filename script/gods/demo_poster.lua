dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Occupation of the captive we are sending to you is an ocean god. Except of the plane and ship disappearings (so called Sea Battle case) he is responsible for the other crimes as well, moving the continents (code name Run, continent, run) and meteorite in Tunguzka (code Jumping Jack) are among them.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "Zadržený zločinec, kterého vám posíláme, je povoláním mořský bůh. Kromě mizení letadel a lodí (tzv. případ Lodě) má na svědomí i další zločiny, mimo jiné stěhování kontinentů (krycí název Škatule škatule) a tunguzský meteorit (kód Kloboučku hop).")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "We managed to intervene just in the nick of time: we have found a brand new unwrapped box with a table game called STAR WARS in the captive's house.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "Podařilo se nám zakročit v poslední chvíli: u zadrženého doma jsme našli dosud nerozbalenou krabici deskové hry s názvem STAR WARS.")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "You can find the records of his sea battles in the attachement.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "V příloze naleznete záznam jejich lodních bitev.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/gods/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planStop()

