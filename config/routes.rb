Rails.application.routes.draw do
  root "citizens#index"

  get "citizens" => "citizens#index"
  get "citizens/:id" => "citizens#show", as: :citizen
end
