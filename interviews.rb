# -*- coding: utf-8 -*-

def published_interviews_config
  interviews_config.select { |interview| interview[:published?] }
end

def interviews_config
  [
   {:published? => true, :published_timestamp => 1301334838, :published_at => '28.03.2011', :name => 'andre-eide', :full_name => 'André Eide', :title => 'Selvstendig næringsdrivende og fotograf'},
   {:published? => true, :published_timestamp => 1301855769, :published_at => '04.04 2011', :name => 'eli-toftoy-andersen', :full_name => 'Eli Toftøy-Andersen', :title => 'Brukervennlighetsrådgiver hos Steria'},    
   {:published? => true, :published_timestamp => 1302502524, :published_at => '11.04.2011', :name => 'espen-dallokken', :full_name => 'Espen Dalløkken', :title => 'Framsiearkitekt hos FINN.no'},
   {:published? => true, :published_timestamp => 1303113899, :published_at => '18.04.2011', :name => 'christian-johansen', :full_name => 'Christian Johansen', :title => 'Programmerer hos Gitorious'},
   {:published? => true, :published_timestamp => 1303715766, :published_at => '25.04.2011', :name => 'ole-morten-amundsen', :full_name => 'Ole Morten Amundsen', :title => 'Entreprenør og programmerer'},
   {:published? => true, :published_timestamp => 1304311858, :published_at => '02.05.2011', :name => 'johannes-brodwall', :full_name => 'Johannes Brodwall', :title => 'Chief Scientist hos Steria'},
   {:published? => true, :published_timestamp => 1304921718, :published_at => '09.05.2011', :name => 'espen-antonsen', :full_name => 'Espen Antonsen', :title => 'Utvikler'},
   {:published? => true, :published_timestamp => 1305529393, :published_at => '16.05.2011', :name => 'thomas-flemming', :full_name => 'Thomas Flemming', :title => 'Programmerer'},
   {:published? => true, :published_timestamp => 1306147243, :published_at => '23.05.2011', :name => 'trygve-lie', :full_name => 'Trygve Lie', :title => 'Framside-utvikler hos A-pressen Digitale Medier'},
   {:published? => true, :published_timestamp => 1306740066, :published_at => '30.05.2011', :name => 'torbjorn-maro', :full_name => 'Torbjørn Marø', :title => 'Senior utvikler og teamleder hos PSWinCom'},
   {:published? => true, :published_timestamp => 1307340676, :published_at => '06.06.2011', :name => 'rune-hafskjer', :full_name => 'Rune Hafskjær', :title => 'Programsjef i P5 og utviklingssjef i P4'},
   {:published? => true, :published_timestamp => 1307954576, :published_at => '13.06.2011', :name => 'sigrun-luras', :full_name => 'Sigrun Lurås', :title => 'Interaksjonsdesigner/human factors-spesialist hos DNV'},
   {:published? => true, :published_timestamp => 1308551691, :published_at => '20.06.2011', :name => 'jan-olav-eide', :full_name => 'Jan-Olav Eide', :title => 'Systemutvikler og systemarkitekt hos OpenAdExchange'},
   {:published? => true, :published_timestamp => 1309158753, :published_at => '27.06.2011', :name => 'anders-austad', :full_name => 'Anders Austad', :title => 'Konsulent hos Bouvet'},
   {:published? => true, :published_timestamp => 1311073275, :published_at => '08.08.2011', :name => 'sarah-brodwall', :full_name => 'Sarah Brodwall', :title => 'Webdesigner'},
   {:published? => true, :published_timestamp => 1313382367, :published_at => '15.08.2011', :name => 'rolf-rander-ness', :full_name => 'Rolf Rander Næss', :title => 'Rådgiver hos Acando'},
   {:published? => true, :published_timestamp => 1313987104, :published_at => '22.08.2011', :name => 'espen-andersen', :full_name => 'Espen Andersen', :title => 'Foreleser, forsker og skribent'},
   {:published? => true, :published_timestamp => 1314591941, :published_at => '29.07.2011', :name => 'karianne-berg', :full_name => 'Karianne Berg', :title => 'Utvikler og konsulent hos Miles'},
   {:published? => true, :published_timestamp => 1315196668, :published_at => '05.09.2011', :name => 'mia-holte', :full_name => 'Mia Holte', :title => 'Frilans webdesigner'},
   {:published? => true, :published_timestamp => 1315801609, :published_at => '12.09 2011', :name => 'morten-tollefsen', :full_name => 'Morten Tollefsen', :title => 'Forskningsleder i MediaLT'},
   {:published? => true, :published_timestamp => 1316452191, :published_at => '19.09.2011', :name => 'odin-hole-standal', :full_name => 'Odin Hole Standal', :title => 'Konsulent hos Webstep'},
   {:published? => true, :published_timestamp => 1317057945, :published_at => '26.09.2011', :name => 'jon-bing', :full_name => 'Jon Bing', :title => 'Professor hos det juridiske fakultet ved UiO'},
   {:published? => true, :published_timestamp => 1317661397, :published_at => '03.10 2011', :name => 'magnar-sveen', :full_name => 'Magnar Sveen', :title => 'Glad framsieutvikler hos Kodemaker'},
   {:published? => true, :published_timestamp => 1318228398, :published_at => '10.10.2011', :name => 'paul-chaffey', :full_name => 'Paul Chaffey', :title => 'Adm. dir. i Abelia'},
   {:published? => true, :published_timestamp => 1318921459, :published_at => '17.10 2011', :name => 'elisabeth-irgens', :full_name => 'Elisabeth Irgens', :title => 'Webdesigner og grafisk designer'},
   {:published? => true, :published_timestamp => 1319547717, :published_at => '25.10.2011', :name => 'joachim-froholt', :full_name => 'Joachim Froholt', :title => 'Skribent hos Gamer.no'},
   {:published? => true, :published_timestamp => 1320080337, :published_at => '31.10 2011', :name => 'rikke-fjeld-jansen', :full_name => 'Rikke Fjeld Jansen', :title => 'Webdesigner og illustratør'},
   {:published? => true, :published_timestamp => 1320690180, :published_at => '07.11 2011', :name => 'ole-christian-storesund', :full_name => 'Ole Christian Storesund', :title => 'Grafisk designer'},
   {:published? => true, :published_timestamp => 1321271287, :published_at => '14.11 2011', :name => 'mats-lindh', :full_name => 'Mats Lindh', :title => 'Utvikler, innvikler og hacker'},
   {:published? => true, :published_timestamp => 1322477426, :published_at => '28.11 2011', :name => 'rune-spaans', :full_name => 'Rune Spaans', :title => 'Uavhengig illustratør og regissør'},
   {:published? => true, :published_timestamp => 1323117735, :published_at => '05.12 2011', :name => 'ram-yoga', :full_name => 'Ram Yoga', :title => 'Interaksjonsdesigner og brukervennlighetsrådgiver'},
   {:published? => true, :published_timestamp => 1323802773, :published_at => '13.12 2011', :name => 'sondre-bjellas', :full_name => 'Sondre Bjellås', :title => 'Senior løsningsarkitekt hos Deepmind AS'},
   {:published? => true, :published_timestamp => 1324307340, :published_at => '19.12 2011', :name => 'kjetil-birkeland-moe', :full_name => 'Kjetil Birkeland Moe', :title => 'Utvikler, designer og pianist'}]
end
