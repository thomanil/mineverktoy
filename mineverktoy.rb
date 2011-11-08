# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'
require './interviews'

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
    "<div class='interview-question'><h3>Hvem er du, og hva holder du på med?</h3><hr></div>"
  end
  
  def q2_what_hardware?
    "<div class='interview-question'><h3>Hva slags maskinvare bruker du?</h3><hr></div>"
  end
  
  def q3_what_software?
    "<div class='interview-question'><h3>Og hva slags programvare?</h3><hr></div>"
  end
  
  def q4_dream_setup?
    "<div class='interview-question'><h3>Hva er drømmeoppsettet ditt?</h3><hr></div>"
  end

  def navbar
    "<a href='/'>Intervjuene</a> <span class='nav-separator'>|</span> <a href='om'>Om nettstedet</a>"
  end
      
  def portrait_html name, photo_attribution
    html = ""
    html += "<img class='portrait' src='/images/#{name}/portrait.jpg'>"
    if photo_attribution
      html += "<span class='right-aligned photo-attribution'>#{photo_attribution}</span>"  
    end
    return html
  end
  
  def interview_list  
    list = "";
    list += "<ul class='interview-list'>"
    published_interviews_config().reverse.each_with_index do |interview, i| 
      name = interview[:name]
      full_name = interview[:full_name]
      published_at = interview[:published_at]
      title = interview[:title]  
      
      list += "  <li class='interview-summary'>"
      
      if i == 0
        list += "     <a class= 'interviewee-name'href='#{name}'><img class='portrait' src='images/#{name}/portrait.jpg'/></a>"   
      end
      
      list += "     <a class= 'interviewee-name'href='#{name}'>#{full_name}</a> <br>"
      list += "     <span class='interviewee-title'>#{title}</span>"
      
      if i == 0
        published_field = "Denne uken"
      else
        published_field = "#{published_at}"
      end
      
      list += "     <span class='interview-pubdate'>#{published_field}</span>"
      list += "     <hr/>"
      list += "  </li>"
      
    end
    list += "</ul>"
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
    header += "   <h2>#{full_name}</h2>"
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
              xml.title "#{interview[:full_name]}"
              xml.link "http://mineverktoy.com/#{interview[:name]}"
              xml.description "Hvilke verktøy bruker #{interview[:full_name]} for å få ting gjort?"
              xml.pubDate Time.at(interview[:published_timestamp]).strftime("%a, %d %b %Y %H:%M:%S %Z")          
            end
          end
        end
      end
    end
  end
  
end



