class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
get "/games" do
  games = Game.all.order(:title)
  games.to_json()
end

post "/games" do 
  games = Game.create(
    title: params[:title],
    image_url: params[:image_url],
    game_genre: params[:game_genre]
  )
games.to_json()
end

get "/games/:id" do
  games = Game.find(params[:id])
  games.to_json(include: :reviews)
end

get  "/users" do
  users = User.all
  users.to_json()
end

get "/users/:id" do
users = User.find(params[:id])
users.to_json()
end

post "/reviews" do
reviews = Review.create(
  review: params[:review],
  game_id: params[:game_id],
  user_id: params[:user_id],
  rating: params[:rating])

reviews.to_json
end

delete "/reviews/:id" do
  reviews = Review.find(params[:id])
reviews.destroy
reviews.to_json
end

patch "/reviews/:id" do 
  reviews = Review.find(params[:id])
  reviews.update(:review => params[:review])
  reviews.to_json
end




end
