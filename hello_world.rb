# coding: utf-8

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

get '/env' do
  @title = 'Environment'
  @subtitle = 'Environment Variables'
  @env = env
  erb :environment
end

get %r{/\A((?:sp|gr)eedy)\z} do |c|
  @title = 'undefined route'
  @message = 'You got cought in the #{c} route!'
  erb :showmsg
end
