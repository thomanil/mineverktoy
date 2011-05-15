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
   {:published? => false, :published_timestamp => 1305477552, :published_at => '15.05 2011', :name => 'thomas-flemming', :full_name => 'Thomas Flemming', :title => 'Programmerer'}]
end
