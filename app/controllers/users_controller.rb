class UsersController < ApplicationController

    get '/signup' do 
        if !logged_in?
            erb :"users/signup"
        else
            redirect "/tweets"
        end
    end

    post '/signup' do
        user = User.new(params)
        if user.save
            session[:user_id] = user.id
            redirect "/tweets"
        else
            redirect "/signup"
        end
    end

    get '/login' do 
        if logged_in?
            
        erb :"users/login"
    end

    post '/login' do 
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect "/tweets"
        else
            redirect "/login"
        end
    end
end
