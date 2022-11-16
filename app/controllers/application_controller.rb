require 'erb'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  configure do
    enable :sessions
  end

  # Add your routes here 

  
  get '/songs' do
    songs = Song.all
    songs.to_json
  end

  get '/songs/:id' do
    song = Song.find(params[:id])
    song.to_json
  end

  get '/albums' do
    albums = Album.all
    albums.to_json(only: [:id, :name, :image_url])
  end
  
  get "/albums/:id" do
    album = Album.find(params[:id])
    album.to_json(only: [:id, :name, :image_url], include: {
      songs: {only: [:id, :name, :iframe_url, :likes], include: {
        reviews: {only: [:id, :comment] }}
      }})
  end
  
  get '/users' do
    users = User.all
    users.to_json
  end

  get '/reviews' do
    reviews = Reviews.all
    reviews.to_json
  end
  
  post "/reviews" do
    # user = User.find_or_create_by(name: params[:user_name])
    # song = Song.find(params[:review_data][:song_id])
    review = Review.create(comment: params[:comment], user_id: current_user.id, song_id: params[:song_id])
    review.to_json
  end

  patch "/songs/:id" do
    song = Song.find(params[:id])
    song.update(likes: params[:likes])
    song.to_json
  end

  # the following code is for authentication

  get '/users/:id' do
    # "#{params[:id]}"
    { user_id: params[:id] }.to_json
  end

  get '/login' do
    "didn't work"
  end

  post '/login' do 
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect "/users/#{user.id}"
    else
       flash[:error] = "No account associated with those credentials please try again."
       redirect '/login'
    end
  end

  post '/register' do
    user = User.create(username: params[:username], password: params[:password])
    { username: user.username}.to_json
  end


  get '/logout' do
    session.clear
    redirect "/"
  end


end
