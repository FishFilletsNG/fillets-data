dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "We recommend subject the enclosed material to thorough tests of holiness. Due to the lack of equipment we performed only the basic tests and the results are more than promising.")
dialog_addDialog("dlg-x-poster1", "cs", "", "Zaslaný materiál doporučujeme podrobit důkladným testům svatosti. Díky nedostatku vybavení jsme provedli jen základní testy a výsledky jsou více než slibné.")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Bombing some of the grails with ultradirty words, we measured sometimes even 3 Santa Clauses, some of them withstanded the circumstances pressure of 0.8 jobs for the period of one minute!")
dialog_addDialog("dlg-x-poster2", "cs", "", "Při bombardování ultrasprostými slovy jsme u některých grálů naměřili až tři mikuláše, jiné vydržely po dobu jedné minuty tlak okolností téměř 0,8 jobu!")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "It is also possible that we have encountered the whole Holy Service.")
dialog_addDialog("dlg-x-poster3", "cs", "", "Je dokonce možné, že se jedná o celý Svatý Servis.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/grail/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planTalk("dlg-x-poster2")
planTalk("dlg-x-poster3")
planStop()

