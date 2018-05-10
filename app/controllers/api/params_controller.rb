class Api::ParamsController < ApplicationController
  def name_game
      @name = params["name"].upcase
      render 'name_game.json.jbuilder'
    end 
    def a_game
      @name = params["name"].upcase
      if @name.start_with?("A")
        @message =  "Hey! Your name starts with the first letter of the alphabet!"
      else 
        @message = "Your name doesn\'t start with \'A\', you\'re lame."
    end
    render 'a_name.json.jbuilder'
  end 

  def string_guessing
    @guess = params["guess"]
    answer = 42 

    if @guess.to_i > answer 
      @hint = "Too high, guess lower."
    elsif @guess.to_i < answer
      @hint = "Too low, guess higher."
    else @guess == answer 
      @hint = "On the money!"
    end 
  render 'string_guessing.json.jbuilder'
  end 

  def url_guessing 
    @guess = params["guess"]
    answer = 42

    if @guess > answer
      @hint = "too high, guess lower."
    elsif @guess < answer 
      @hint = "too low, guess higher."
    else 
      @hint = "On the money!"
    end 
  render 'url_guessing.json.jbuilder'
  end 
end
