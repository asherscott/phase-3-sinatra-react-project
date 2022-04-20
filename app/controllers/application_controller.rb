class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Game.all.to_json
  end

  get "/reviews" do
    Review.all.to_json
  end

  get "/users" do
    User.all.to_json
  end

  post "/games" do
    game = Game.new(params)
    game.save
    game.to_json
  end


end
