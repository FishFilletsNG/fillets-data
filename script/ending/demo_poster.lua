dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Good morning, fish!")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Again, you didn't disappoint us. General Committee decided to decorate you with the highest orders. They are made of milk chocolate. Due to confidentiality, eat them immediately.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-boss", "en", "", "font_poster", "BOSS")
dialog_addDialog("dlg-x-boss", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "PS: I understand this little pld issue, but next time please tell me in advance, so that we can provide an adoption permission.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-poster4", "en", "", "font_poster", "PPS: Tell me, where did you find such a good player that he managed it all? I wish he won the computer or at least some of the other prizes.")
dialog_addDialog("dlg-x-poster4", "cs", "", "font_poster", "")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/ending/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planSpace()
planTalk("dlg-x-poster2")
planTalk("dlg-x-boss")
planSpace()
planTalk("dlg-x-poster3")
planTalk("dlg-x-poster4")
planStop()

