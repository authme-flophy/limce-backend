class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
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
    reviews = Review.all
    reviews.to_json
  end
  
  post "/reviews" do
    user = User.find_or_create_by(name: params[:user_name])
    song = Song.find(params[:review_data][:song_id])
    review = Review.create(comment: params[:review_data][:comment], user_id: user.id, song_id: song.id)
    review.to_json
  end

  patch "/songs/:id" do
    song = Song.find(params[:id])
    song.update(likes: params[:likes])
    song.to_json
  end



end
