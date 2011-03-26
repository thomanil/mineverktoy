require 'sinatra'
require 'interviews'

get '/' do
  erb :index
end

get '/om' do
  erb :about
end

get '/rss.xml' do
  rss_feed
end

get '/:name' do |name|
  @interview_header = interview_header name  
  erb :"interviews/#{name}"
end



helpers do
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

  def index_link
    "<a href='/'>Intervjuene</a>"
  end
  
  def om_link
    "<a href='om'>Om nettstedet</a>"
  end
      
  def portrait_img name
    "<img src='/images/#{name}/portrait.jpg'>"
  end
  
  def interview_list  
    list = "";
    published_interviews_config().reverse.each do |interview| 
      name = interview[:name]
      full_name = interview[:full_name]
      
      list += "<p class='summary'>"
      list += "<!-- <img class='thumbnail' src='images/#{name}/thumbnail-bw.jpg'><img class='hidden thumbnail' src='images/#{name}/thumbnail-color.jpg'> -->"
      list += "<a href='#{name}'>#{full_name}</a>"
      list += "</p>"
    end
    return list
  end
    
  def interview_header name
    meta = interviews_config.find { |config| config[:name].eql? name }
    published_at = meta[:published_at]
    title = meta[:title]
    full_name = meta[:full_name]

    header = ""
    header += "<p>#{portrait_img name}</p>"
    header += "<h2>#{full_name}</h2>"
    header += "<p>#{title}</p>"
  end
  
  def rss_feed
    builder do |xml|
      xml.instruct! :xml, :version => '1.0'
      xml.rss :version => "2.0" do
        xml.channel do
          xml.title "Mineverktoy"
          xml.description "Nye intervjuer fra Mineverktoy.com"
          xml.link "http://mineverktoy.com"

          published_interviews_config().each do |interview|
            xml.item do
              xml.title "Hvilke verktøy bruker #{interview[:full_name]}?"
              xml.link "http://mineverktoy.com/#{interview[:name]}"
              xml.pubDate Time.at interview[:published_timestamp]
            end
          end
        end
      end
    end
  end
  
end



