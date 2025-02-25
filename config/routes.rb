Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "statistics#index"
  get "автобусы/:from/:to" => "trips#index", as: 'trips'
  get "импорт" => "trips#import"

  mount PgHero::Engine, at: "pghero"
end
