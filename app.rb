require 'sinatra'

class ChitterApp < Sinatra::Base 

    get '/users/new' do
        erb :sign_up
    end


    post '/users' do
        redirect 'sessions/new'
    end

end 