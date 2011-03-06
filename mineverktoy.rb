require 'sinatra'


get '/' do
  "index page"
end

get '/om' do
  "about page"
end

get '/:name' do |name|
  "Du har funnet intervjuet med #{name}"
end