class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Game.all.to_json(include: [:reviews, :users])
  end

  get "/reviews" do
    Review.all.to_json(methods: [:username])
  end

  get "/users" do
    User.all.to_json
  end

end
