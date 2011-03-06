require 'sinatra'

get '/' do
  erb :index
end

#get '/om' do
 # erb :about
#end

#get '/:name' do |name|
 # erb :"#{name}"
    # would instead render views/dogs/index.erb
#end