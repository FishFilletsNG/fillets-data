dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "See video at http://fillets.sourceforge.net/intro.avi")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "Video je na http://fillets.sourceforge.net/intro.avi")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/menu/intro.png", 0, 0)

planTalk("dlg-x-poster1")
planStop()

