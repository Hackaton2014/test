require 'rubygems'
require 'sinatra'
require 'erb'



get '/' do
  erb :index
end

post '/payload' do
  push_data = JSON.parse(params[:payload])
  puts "Some JSON: #{push_data.inspect}"
end
