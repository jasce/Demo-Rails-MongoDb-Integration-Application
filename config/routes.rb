Rails.application.routes.draw do
 root to: "zips#index"

 resources :zips
end
