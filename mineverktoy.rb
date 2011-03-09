require 'sinatra'
require 'interviews'


helpers do

  def interview_list  
    list = "";
    interviews_config().each do |interview| 
      name = interview[:name]
      
      list += "<p class='summary'>"
      list += "<img class='thumbnail' src='images/#{name}/thumbnail-bw.jpg'><img class='hidden thumbnail' src='images/#{name}/thumbnail-color.jpg'>"
      list += "<a href='#{name}'>#{name}</a>"
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
  
  def q1_who_are_you?
    "<h2>Hvem er du, og hva holder du på med?</h2>"
  end
  
  def q2_what_hardware?
    "<h2>Hva slags maskinvare bruker du?</h2>"
  end
  
  def q3_what_software?
    "<h2>Og hva slags programvare?</h2>"
  end
  
  def q4_dream_setup?
    "<h2>Hva er drømmeoppsettet ditt?</h2>"
  end
  
  def interview_metadata name
    interviews_config.find { |config| config[:name].eql? name }
  end
  
  def portrait_link name
    "<img src='/images/#{name}/portrait.jpg'>"
  end
  
  def interview_header name
    meta_data = interview_metadata name
    published_at = meta_data[:published_at]
    title = meta_data[:title]
    full_name = meta_data[:full_name]

    header = ""
    header += "<p>#{portrait_link name}</p>"
    header += "<h2>#{full_name}</h2>"
    header += "<p>#{title} - #{published_at}</p>"
    
    return header
  end
  
end


get '/' do
  erb :index
end

get '/om' do
  erb :about
end

get '/:name' do |name|
  @interview_header = interview_header name
  
  # find that interview from hash-array, populate page with info taken from there
  # make parts of page generated, ie publish date etc
  # also inject questions
  
  erb :"interviews/#{name}"
end
