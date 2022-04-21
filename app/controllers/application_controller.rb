class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    Game.all.to_json(methods: :avg_rating, include: [reviews: {methods: [:username]}])
  end

  get "/games/:id" do
    Game.find(params[:id]).to_json
  end

  get "/reviews" do
    Review.all.to_json
  end

  get "/users" do
    User.all.to_json
  end

  get "/reviews/:id" do
    Review.find(params[:id]).to_json
  end

  post "/reviews" do
    Review.create(params)
    Review.last.to_json(methods: [:username])
  end

  patch "/reviews/:id" do 
    # review = Review.find(params[:id])
    # review.update(review_params)
    review = Review.find(params[:id])
    review.update(params)
    Review.find(params[:id]).to_json
  end
  post "/games" do
    game = Game.create(params)
    # game = Game.new(params)
    # game.save
    Game.last.to_json(methods: :avg_rating, include: [reviews: {methods: [:username]}])
  end

  delete "/games/:id" do
    game = Game.find(params[:id])
    game.destroy
  end

end

# private

# def review_params
#   allowed_params = %w(id, rating, game_id, user_id, comment, date, likes)
#   params.select |param, value| allowed_params.include?(params)
# end