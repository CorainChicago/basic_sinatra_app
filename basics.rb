require 'rubygems'
require 'sinatra'

get '/' do
  "Hello World! My cat is here"
end

get'/about' do
  'A little about my cat(s)'
end

get '/hello/:name/:city' do
  "You are awesome #{params[:name].upcase} so keep rocking on in the city of #{params[:city]}."
end

get '/more/*' do
  params[:splat]
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}.'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  halt 404, 'page not found - go pet your cat'
end

