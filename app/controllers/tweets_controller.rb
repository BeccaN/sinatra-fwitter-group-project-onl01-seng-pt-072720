class TweetsController < ApplicationController

    get '/tweets' do 
        if logged_in?
            @tweets = Tweet.all
            erb :"tweets/index"
        else
            redirect "/login"
        end
    end

    get '/tweets/new' do 

        erb :"tweets/new"
    end

    post '/tweets' do 
        tweet = Tweet.new(params)
        tweet.user_id = current_user.id 
        tweet.save

        redirect "/tweets"
    end


end
