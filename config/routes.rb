Rails.application.routes.draw do
  root "citizens#index"

  get "citizens" => "citizens#index"
end
