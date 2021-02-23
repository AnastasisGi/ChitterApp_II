require 'sinatra'
require 'sinatra/activerecord'
require 'pry'
require 'sinatra/flash'
require 'rack'
require './models/user.rb'

class ChitterApp < Sinatra::Base 

    register Sinatra::ActiveRecordExtension
    register Sinatra::Flash
    enable :sessions

    get '/users/new' do
        erb :sign_up
    end


    post '/users' do
        if User.find_by(username: params['username']) || User.find_by(email: params['email'])
            flash[:notice] = 'User already exists please try again'
            redirect '/users/new'
        else
            user = User.new(email: params['email'], name: params['name'], username: params['username'])
            user.password = params['password']
            user.save!
            redirect '/sessions/new'
        end
    end

   get '/sessions/new' do
        'You are logged in!'
    end

end 