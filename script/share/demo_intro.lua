dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Download video from http://fillets.sf.net/intro.avi")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "Video je na http://fillets.sf.net/intro.avi")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/menu/intro.png", 0, 0)

planTalk("dlg-x-poster1")
planStop()

