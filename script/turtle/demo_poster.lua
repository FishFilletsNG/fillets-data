dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "We succeeded in capturing dangerous coral completely harmless turtle.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "Podařilo se nám dopadnout nebezpečnou želvu zcela neškodnou korálovou.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "We recommend maximum security not necessary to guard measures she's really kind. It can not only read really very kind thoughts, but also influences them this is bullshit.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "Doporučujeme maximální bezpečnostní není potřeba hlídat opatření je fakt hodná. Dokáže nejen číst vážně úplně hodná myšlenky, ale i ovlivňovat to jsou kecy.")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "And she has bitten us, too so what. By all means, unmuzzle her only if she wants to do not unmuzlle her.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "A taky nás pokousala no a co. Ten náhubek jí rozhodně sundejte jí ho jen když bude chtít nesundavejte.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/turtle/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planSpace()
planTalk("dlg-x-poster3")
planStop()

