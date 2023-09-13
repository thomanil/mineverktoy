# -*- coding: utf-8 -*-

def published_interviews_config
  interviews_config.select { |interview| interview[:published?] }
end

def interviews_config
  [


   {:published? => true, :published_timestamp => 1305529393, :published_at => '16.05.2011', :name => 'thomas-flemming', :full_name => 'Thomas Flemming', :title => 'Programmerer'},
   {:published? => true, :published_timestamp => 1306147243, :published_at => '23.05.2011', :name => 'trygve-lie', :full_name => 'Trygve Lie', :title => 'Framside-utvikler hos A-pressen Digitale Medier'},
   {:published? => true, :published_timestamp => 1306740066, :published_at => '30.05.2011', :name => 'torbjorn-maro', :full_name => 'Torbjørn Marø', :title => 'Senior utvikler og teamleder hos PSWinCom'},
   {:published? => true, :published_timestamp => 1307954576, :published_at => '13.06.2011', :name => 'sigrun-luras', :full_name => 'Sigrun Lurås', :title => 'Interaksjonsdesigner/human factors-spesialist hos DNV'},
   {:published? => true, :published_timestamp => 1323802773, :published_at => '13.12 2011', :name => 'sondre-bjellas', :full_name => 'Sondre Bjellås', :title => 'Senior løsningsarkitekt hos Deepmind AS'},
end
