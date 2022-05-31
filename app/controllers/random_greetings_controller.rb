class RandomGreetingsController < ApplicationController
  include Response

  def index
    json_response(Greeting.all.sample)
  end
end
