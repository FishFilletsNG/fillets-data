dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "After much hardship we succeeded in finding captain Silver's map. Initial enthusiasm afterwards changed into bitter disappointment, when we found out that the above mentioned map does not indicate the location of the treasure, but the place of residence of the last surviving Silver's parrot that, unfortunately, suffers from sclerosis and cannot remember, where the treasure is.")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "Après de nombreuse épreuves, nous avons réussit à localiser la carte du capitaine Silver. Notre enthousiasme a vite tourné à l'amer déception, quand nous avons réalisé que la susdite carte n'indiquait pas l'emplacement du trésor, mais le lieu de résidence du dernier perroquet survivant au capitaine Silver. Malheureusement, celui-ci souffre de sclérose et est incapable de se souvenir où est enterré le trésor.")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Nach langer Mühe haben wir Kapitän Silvers Karte gefunden. Die anfängliche Begeisterung verkehrte sich schnell in bittere Enttäuschung, nachdem wir herausgefunden hatten, dass auf der Karte nicht das Versteck des Schatzes markiert war, sondern der Wohnsitz von Silvers letztem überlebenden Papagei, der leider an Sklerose leidet und sich nicht daran erinnern kann, wo der Schatz versteckt ist.")

-- -----------------------------------------------------------------
file_include("script/share/prog_demo.lua")
demo_display("images/map/poster.png", 0, 0)

planTalk("dlg-x-poster1")
planStop()

