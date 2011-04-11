def published_interviews_config
  interviews_config.select { |interview| interview[:published?] }
end

def interviews_config
  [{:published? => true, :published_timestamp => 1301334838, :published_at => '28.03.2011', :name => 'andre-eide', :full_name => 'André Eide', :title => 'Selvstendig næringsdrivende og fotograf'},
   {:published? => true, :published_timestamp => 1301855769, :published_at => '04.04 2011', :name => 'eli-toftoy-andersen', :full_name => 'Eli Toftøy-Andersen', :title => 'Brukervennlighetsrådgiver hos Steria'},    
   {:published? => true, :published_timestamp => 1302502524, :published_at => '11.04.2011', :name => 'espen-dallokken', :full_name => 'Espen Dalløkken', :title => 'Framsiearkitekt hos FINN.no'},
   {:published? => false, :published_timestamp => 1301145749, :published_at => 'IKKE PUBLISERT ENNÅ', :name => 'christian-johansen', :full_name => 'Christian Johansen', :title => 'Programmerer hos Gitorious'},
   {:published? => false, :published_timestamp => 1301147703, :published_at => 'IKKE PUBLISERT ENNÅ', :name => 'ole-morten-amundsen', :full_name => 'Ole Morten Amundsen', :title => 'Entreprenør og programmerer'},
   {:published? => false, :published_timestamp => 1300391014, :published_at => 'IKKE PUBLISERT ENNÅ', :name => 'johannes-brodwall', :full_name => 'Johannes Brodwall', :title => 'Chief Scientist hos Steria'}]
end
