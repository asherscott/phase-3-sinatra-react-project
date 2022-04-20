class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Game.all.to_json(include: [reviews: {methods: [:username]}])
  end

  get "/reviews" do
    Review.all.to_json
  end

  get "/users" do
    User.all.to_json
  end

  post "/reviews" do
    Review.create(params)
    Review.last.to_json(methods: [:username])
  end

end
