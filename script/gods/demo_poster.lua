

dialog_addDialog("dlg-x-poster", "en", "", "font_poster", "TODO: dialog")
dialog_addDialog("dlg-x-poster", "cs", "", "font_poster", "")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/gods/poster.png", 0, 0)

planTalk("dlg-x-poster")
planStop()

