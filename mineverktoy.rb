require 'sinatra'
require 'interviews'


helpers do

  def interview_list  
    list = "";
    interviews_config().each do |interview| 
      list += "<p class='summary'>"
      list += "<a href='#{interview[:name]}'>#{interview[:name]}</a>"
      list += "</p>"
    end
    return list
  end
  
  def index_link
    "<a href='/'>Intervjuene</a>"
  end
  
  def om_link
    "<a href='om'>Om nettstedet</a>"
  end
  
  
end


get '/' do
  erb :index
end

get '/om' do
  erb :about
end

get '/:name' do |name|
  # find that interview from hash-array, populate page with info taken from there
  # make parts of page generated, ie publish date etc
  # also inject questions
  
  erb :"interviews/#{name}"
end
