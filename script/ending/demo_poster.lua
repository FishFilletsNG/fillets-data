dialog_addDialog("dlg-x-poster1", "en", "", "font_poster", "Good morning, fish!")
dialog_addDialog("dlg-x-poster1", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster1", "fr", "", "font_poster", "Bonjour, poissons !")
dialog_addDialog("dlg-x-poster1", "de", "", "font_poster", "Guten Morgen, Fische!")

dialog_addDialog("dlg-x-poster2", "en", "", "font_poster", "Again, you didn't disappoint us. General Committee decided to decorate you with the highest orders. They are made of milk chocolate. Due to confidentiality, eat them immediately.")
dialog_addDialog("dlg-x-poster2", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster2", "fr", "", "font_poster", "A nouveau, vous ne nous avez pas déçu. Le comité Général a décidé de vous décorer de la plus haute distinction. Les médailles sont en chocolat. Pour cause de confidentialité, mangez les immédiatement.")
dialog_addDialog("dlg-x-poster2", "de", "", "font_poster", "Ihr habt uns wieder mal nicht enttäuscht. Das Generalkomitee hat entschieden, euch die höchste Auszeichnung zukommen zu lassen. Die Medaillen sind aus Schokolade. Aus Geheimhaltungsgründen bitte sofort essen!")

dialog_addDialog("dlg-x-boss", "en", "", "font_poster", "BOSS")
dialog_addDialog("dlg-x-boss", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-boss", "fr", "", "font_poster", "PATRON")
dialog_addDialog("dlg-x-boss", "de", "", "font_poster", "CHEF")

dialog_addDialog("dlg-x-poster3", "en", "", "font_poster", "PS: I understand this little pld issue, but next time please tell me in advance, so that we can provide an adoption permission.")
dialog_addDialog("dlg-x-poster3", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster3", "fr", "", "font_poster", "PS: Je comprends le problème avec la chose nommée pld, mais la prochaine fois prévenez moi, ainsi je pourrais demander une autorisation d'adoption.")
dialog_addDialog("dlg-x-poster3", "de", "", "font_poster", "PS: Ich verstehe diese kleine Monster-Sache, aber gebt mir das nächste Mal bitte vorher Bescheid, dann können wir eine Adoptionserlaubnis einholen.")

dialog_addDialog("dlg-x-poster4", "en", "", "font_poster", "PPS: Tell me, where did you find such a good player that he managed it all? I wish he won the computer or at least some of the other prizes.")
dialog_addDialog("dlg-x-poster4", "cs", "", "font_poster", "")
dialog_addDialog("dlg-x-poster4", "fr", "", "font_poster", "PPS: Dites moi, où est-ce que vous avez trouvé un(e) si bon(ne) joueur(se) qui a tout résolu ? J'espère qu'il a gagné l'ordinateur ou au moins un des prix.")
dialog_addDialog("dlg-x-poster4", "de", "", "font_poster", "PPS: Sagt mir, wo habt ihr einen so guten Spieler gefunden, dass er alles geschafft hat? Ich wünschte er hätte den Rechner oder zumindest ein paar andere Preise gewonnen.")

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

