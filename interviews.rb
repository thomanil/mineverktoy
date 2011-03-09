def interviews_config
  [ {:published_timestamp => 1299704014, :published_at => "21.03.2011", :name => "john-smith", :full_name => "John Smith The First", :title => "Chief King" }, 
    {:published_timestamp => 1299904200, :published_at => "02.06.2011", :name => "jane-doe" , :full_name => "Jane Doe", :title => "Head Queen"} ]
end

# Converting to/from timestamp
# timestamp = Time.now.to_i
# Time.at timestamp