dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Greetings from the rubbish heap to our beloved boss.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Viele Grüße vom Müllhaufen an unseren geliebten Chef.")
dialog_addDialog("dlg-x-poster1", "de_CH", "", "font_poster", "Viele Grüsse vom Müllhaufen an unseren geliebten Chef.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Yours sincerely")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster2", "de", "", "font_poster", "Mit freundlichen Grüßen")
dialog_addDialog("dlg-x-poster2", "de_CH", "", "font_poster", "Mit freundlichen Grüssen")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "Agents")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster3", "de", "", "font_poster", "Agenten")

dialog_addDialog("dlg-x-poster4", "en", "", "font_poster", "PS: It's great to be here. We irradiate ourselves and swim in the sea a lot. We have many new friends.")
dialog_addDialog("dlg-x-poster4", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster4", "de", "", "font_poster", "PS: Hier ist es großartig. Wir strahlen übers ganze Gesicht und schwimmen oft im Meer. Wir haben viele neue Freunde.")
dialog_addDialog("dlg-x-poster4", "de_CH", "", "font_poster", "PS: Hier ist es grossartig. Wir strahlen übers ganze Gesicht und schwimmen oft im Meer. Wir haben viele neue Freunde.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/barrel/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planSpace()
planTalk("dlg-x-poster4")
planStop()

