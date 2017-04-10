Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      jsonapi_resources :courses
      jsonapi_resources :chapters
      jsonapi_resources :contents
    end
  end
end
