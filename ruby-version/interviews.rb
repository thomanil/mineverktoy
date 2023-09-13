# -*- coding: utf-8 -*-

def published_interviews_config
  interviews_config.select { |interview| interview[:published?] }
end

def interviews_config
  [
   {:published? => true, :published_timestamp => 1303715766, :published_at => '25.04.2011', :name => 'ole-morten-amundsen', :full_name => 'Ole Morten Amundsen', :title => 'Entreprenør og programmerer'},


   {:published? => true, :published_timestamp => 1305529393, :published_at => '16.05.2011', :name => 'thomas-flemming', :full_name => 'Thomas Flemming', :title => 'Programmerer'},
   {:published? => true, :published_timestamp => 1306147243, :published_at => '23.05.2011', :name => 'trygve-lie', :full_name => 'Trygve Lie', :title => 'Framside-utvikler hos A-pressen Digitale Medier'},
   {:published? => true, :published_timestamp => 1306740066, :published_at => '30.05.2011', :name => 'torbjorn-maro', :full_name => 'Torbjørn Marø', :title => 'Senior utvikler og teamleder hos PSWinCom'},
   {:published? => true, :published_timestamp => 1307340676, :published_at => '06.06.2011', :name => 'rune-hafskjer', :full_name => 'Rune Hafskjær', :title => 'Programsjef i P5 og utviklingssjef i P4'},
   {:published? => true, :published_timestamp => 1307954576, :published_at => '13.06.2011', :name => 'sigrun-luras', :full_name => 'Sigrun Lurås', :title => 'Interaksjonsdesigner/human factors-spesialist hos DNV'},

   {:published? => true, :published_timestamp => 1311073275, :published_at => '08.08.2011', :name => 'sarah-brodwall', :full_name => 'Sarah Brodwall', :title => 'Webdesigner'},
   {:published? => true, :published_timestamp => 1313382367, :published_at => '15.08.2011', :name => 'rolf-rander-ness', :full_name => 'Rolf Rander Næss', :title => 'Rådgiver hos Acando'},

   {:published? => true, :published_timestamp => 1315801609, :published_at => '12.09 2011', :name => 'morten-tollefsen', :full_name => 'Morten Tollefsen', :title => 'Forskningsleder i MediaLT'},
   {:published? => true, :published_timestamp => 1316452191, :published_at => '19.09.2011', :name => 'odin-hole-standal', :full_name => 'Odin Hole Standal', :title => 'Konsulent hos Webstep'},
   {:published? => true, :published_timestamp => 1318228398, :published_at => '10.10.2011', :name => 'paul-chaffey', :full_name => 'Paul Chaffey', :title => 'Adm. dir. i Abelia'},


   {:published? => true, :published_timestamp => 1320080337, :published_at => '31.10 2011', :name => 'rikke-fjeld-jansen', :full_name => 'Rikke Fjeld Jansen', :title => 'Webdesigner og illustratør'},
   {:published? => true, :published_timestamp => 1320690180, :published_at => '07.11 2011', :name => 'ole-christian-storesund', :full_name => 'Ole Christian Storesund', :title => 'Grafisk designer'},
   {:published? => true, :published_timestamp => 1322477426, :published_at => '28.11 2011', :name => 'rune-spaans', :full_name => 'Rune Spaans', :title => 'Uavhengig illustratør og regissør'},
   {:published? => true, :published_timestamp => 1323117735, :published_at => '05.12 2011', :name => 'ram-yoga', :full_name => 'Ram Yoga', :title => 'Interaksjonsdesigner og brukervennlighetsrådgiver'},
   {:published? => true, :published_timestamp => 1323802773, :published_at => '13.12 2011', :name => 'sondre-bjellas', :full_name => 'Sondre Bjellås', :title => 'Senior løsningsarkitekt hos Deepmind AS'},
end
