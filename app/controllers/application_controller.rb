class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
get "/games" do
  games = Game.all.order(:title)
  games.to_json()
end


end
