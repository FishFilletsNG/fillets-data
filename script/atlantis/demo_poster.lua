dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "We succeeded in discovering the right cause of sinking the city. It was a well known artifact called atlantic relief, up to now considered by mistake to be a depiction of extraterrestrial visit, that gave us a hint. At the same time,  we recommend increasing the surveillance of the plugs on all continents and bigger islands in order not to repeat similar awkward catastrophe again.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "Podařílo se nám objasnit pravou příčinu potopení města. Na stopu nás přivedl známý artefakt zvaný atlantský reliéf, dosud mylně považovaný za zobrazení návštěvy mimozemšťanů. Zároveň doporučujeme zvýšit ostrahu špuntů všech kontinentů a větších ostrovů, aby se podobná trapná katastrofa neopakovala.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/atlantis/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planStop()

