def published_interviews_config
  interviews_config.select { |interview| interview[:published?] }
end

def interviews_config
  [{:published? => true, :published_timestamp => 1301334838, :published_at => '28.03.2011', :name => 'andre-eide', :full_name => 'André Eide', :title => 'Selvstendig næringsdrivende og fotograf'},
   {:published? => true, :published_timestamp => 1301855769, :published_at => '04.04 2011', :name => 'eli-toftoy-andersen', :full_name => 'Eli Toftøy-Andersen', :title => 'Brukervennlighetsrådgiver hos Steria'},    
   {:published? => true, :published_timestamp => 1302502524, :published_at => '11.04.2011', :name => 'espen-dallokken', :full_name => 'Espen Dalløkken', :title => 'Framsiearkitekt hos FINN.no'},
   {:published? => true, :published_timestamp => 1303113899, :published_at => '18.04.2011', :name => 'christian-johansen', :full_name => 'Christian Johansen', :title => 'Programmerer hos Gitorious'},
   {:published? => true, :published_timestamp => 1303715766, :published_at => '25.04.2011', :name => 'ole-morten-amundsen', :full_name => 'Ole Morten Amundsen', :title => 'Entreprenør og programmerer'},
   {:published? => true, :published_timestamp => 1304311858, :published_at => '02.05.2011', :name => 'johannes-brodwall', :full_name => 'Johannes Brodwall', :title => 'Chief Scientist hos Steria'},
   {:published? => true, :published_timestamp => 1304921718, :published_at => '09.05 2011', :name => 'espen-antonsen', :full_name => 'Espen Antonsen', :title => 'Utvikler'},
   {:published? => true, :published_timestamp => 1305529393, :published_at => '16.05 2011', :name => 'thomas-flemming', :full_name => 'Thomas Flemming', :title => 'Programmerer'},
   {:published? => true, :published_timestamp => 1306147243, :published_at => '23.05.2011', :name => 'trygve-lie', :full_name => 'Trygve Lie', :title => 'Framside-utvikler hos A-pressen Digitale Medier'},
   {:published? => true, :published_timestamp => 1306740066, :published_at => '30.05.2011', :name => 'torbjorn-maro', :full_name => 'Torbjørn Marø', :title => 'Senior utvikler og teamleder hos PSWinCom'},
   {:published? => true, :published_timestamp => 1307340676, :published_at => '06.06.2011', :name => 'rune-hafskjer', :full_name => 'Rune Hafskjær', :title => 'Programsjef i P5 og utviklingssjef i P4'},
   {:published? => true, :published_timestamp => 1307954576, :published_at => '13.06.2011', :name => 'sigrun-luras', :full_name => 'Sigrun Lurås', :title => 'Interaksjonsdesigner/human factors-spesialist hos DNV'},
   {:published? => true, :published_timestamp => 1308551691, :published_at => '20.06.2011', :name => 'jan-olav-eide', :full_name => 'Jan-Olav Eide', :title => 'Systemutvikler og systemarkitekt hos OpenAdExchange'},
   {:published? => true, :published_timestamp => 1309158753, :published_at => '27.06 2011', :name => 'anders-austad', :full_name => 'Anders Austad', :title => 'Konsulent hos Bouvet'},
   {:published? => true, :published_timestamp => 1311073275, :published_at => '08.08 2011', :name => 'sarah-brodwall', :full_name => 'Sarah Brodwall', :title => 'Webdesigner'},
   {:published? => true, :published_timestamp => 1313382367, :published_at => '15.08.2011', :name => 'rolf-rander-ness', :full_name => 'Rolf Rander Næss', :title => 'Rådgiver hos Acando'},
   {:published? => false, :published_timestamp => 1311073211, :published_at => '19.07 2011', :name => 'karianne-berg', :full_name => 'Karianne Berg', :title => 'Utvikler og konsulent hos Miles'},
   {:published? => false, :published_timestamp => 1313428271, :published_at => '15.08 2011', :name => 'mia-holte', :full_name => 'Mia Holte', :title => 'Frilans webdesigner'},
   {:published? => false, :published_timestamp => 1313428333, :published_at => '15.08 2011', :name => 'jon-bing', :full_name => 'Jon Bing', :title => 'Professor hos det juridiske fakultet ved UiO'},
   {:published? => false, :published_timestamp => 1313504607, :published_at => '16.08 2011', :name => 'odin-hole-standal', :full_name => 'Odin Hole Standal', :title => 'Konsulent hos Webstep'}]
end
