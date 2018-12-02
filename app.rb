require 'sinatra'
require_relative 'coinchanger'

get '/' do
  erb :home
end

post '/home' do
  coins = params[:cents]
  redirect '/coins?cents=' + coins
end

get '/coins' do
  cents = params[:cents].to_i
  coins = change(cents)
  erb :coins, locals: {cents: cents, coins: coins}
end
