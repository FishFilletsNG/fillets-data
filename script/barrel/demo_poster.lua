dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Greetings from the rubbish heap to our beloved boss.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Yours sincerely")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "Agents")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")

dialog_addDialog("dlg-x-poster4", "en", "", "font_poster", "PS: It's great to be here. We irradiate ourselves and swim in the sea a lot. We have many new friends.")
dialog_addDialog("dlg-x-poster4", "cs", "", "font_poster", "")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/barrel/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planSpace()
planTalk("dlg-x-poster4")
planStop()

