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

end
