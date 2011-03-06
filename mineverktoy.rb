require 'sinatra'


get '/' do
  "index page"
end

get '/om' do
  "about page"
end

get '/:name' do |name|
 
  erb :"#{name}"
    # would instead render views/dogs/index.erb
end