Rails.application.routes.draw do
  namespace :api do
    get '/string_guessing' => 'params#string_guessing'
    get '/name_game' => 'params#name_game'
    get '/a_name' => 'params#a_game'
    get '/url_guessing/:guess' => 'params#url_guessing'
  end 
end
