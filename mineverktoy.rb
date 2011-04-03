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
  @name = name
  erb :"interviews/#{name}"
end



helpers do
  def q1_who_are_you?
    "<div class='interview-question'><h2>Hvem er du, og hva holder du på med?</h2><hr></div>"
  end
  
  def q2_what_hardware?
    "<div class='interview-question'><h2>Hva slags maskinvare bruker du?</h2><hr></div>"
  end
  
  def q3_what_software?
    "<div class='interview-question'><h2>Og hva slags programvare?</h2><hr></div>"
  end
  
  def q4_dream_setup?
    "<div class='interview-question'><h2>Hva er drømmeoppsettet ditt?</h2><hr></div>"
  end

  def index_link
    "<a href='/'>Intervjuene</a>"
  end
  
  def om_link
    "<a href='om'>Om nettstedet</a>"
  end
      
  def portrait_html name, photo_attribution
    html = ""
    html += "<img src='/images/#{name}/portrait.jpg'>"
    if photo_attribution
      html += "<span class='right-aligned photo-attribution'>#{photo_attribution}</span>"  
    end
    return html
  end
  
  def interview_list  
    list = "";
    published_interviews_config().reverse.each do |interview| 
      name = interview[:name]
      full_name = interview[:full_name]
      published_at = interview[:published_at]
      title = interview[:title]
      
      list += "<ul>"
      list += "  <li class='interview-summary'>"
      list += "     <!-- <img class='thumbnail' src='images/#{name}/thumbnail-bw.jpg'><img class='hidden thumbnail' src='images/#{name}/thumbnail-color.jpg'> -->"
      list += "     <a class= 'interviewee-name'href='#{name}'>#{full_name}</a> <br>"
      list += "     <span class='interviewee-title'>#{title}</span>"
      list += "     <span class='right-aligned interview-pubdate'>#{published_at}</span>"
      list += "     <hr/>"
      list += "  </li>"
      list += "</ul>"
      
    end
    return list
  end
    
  def interview_header name, photo_attribution
    meta = interviews_config.find { |config| config[:name].eql? name }
    published_at = meta[:published_at]
    title = meta[:title]
    full_name = meta[:full_name]
    portrait = portrait_html name, photo_attribution

    header = "<div class='interview-header'>"
    header += "   #{portrait}"
    header += "   <h1>#{full_name}</h1>"
    header += "   <span>#{title}</span>"
    header += "   <span class='right-aligned interview-pubdate'>#{published_at}</span>"
    header += "</div>"
  end
  
  def rss_feed
    builder do |xml|
      xml.instruct! :xml, :version => '1.0'
      xml.rss :version => "2.0" do
        xml.channel do
          xml.title "Mine Verktøy"
          xml.description "Nye intervjuer fra mineverktoy.com"
          xml.link "http://mineverktoy.com"
         
          published_interviews_config().each do |interview|
            xml.item do
              xml.title "Hvilke verktøy bruker #{interview[:full_name]}?"
              xml.link "http://mineverktoy.com/#{interview[:name]}"
              xml.body "Denne uka forteller #{interview[:full_name]} om sine verktøy!"
              xml.pubDate Time.at interview[:published_timestamp]
            end
          end
        end
      end
    end
  end
  
end



