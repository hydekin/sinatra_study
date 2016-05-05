# coding: utf-8
#
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = 'Hello World!'
  @subtitle = 'Welcome to the world of sinatra and ruby.'
  erb :index
end

get '/hello/:name' do
  "Hello, #{params['name']}"
end

get '/env/' do
  @title = 'Environment'
  @env = env
  erb :environment
end