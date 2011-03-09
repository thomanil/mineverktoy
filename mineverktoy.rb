require 'sinatra'
require 'interviews'


helpers do

  def interview_list  
    list = "";
    interviews_config().each do |name| 
      list += "<p class='summary'>"
      list += "<a href='#{name}'>#{name}</a>"
      list += "</p>"
    end
    return list
  end
  
  
  

end


get '/' do
  erb :index
end

get '/om' do
  erb :about
end

get '/:name' do |name|
  erb :"interviews/#{name}"
end
