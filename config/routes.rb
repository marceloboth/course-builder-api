Rails.application.routes.draw do
  use_doorkeeper

  namespace :api do
    namespace :v1 do
      jsonapi_resources :session, only: :index
      jsonapi_resources :users

      jsonapi_resources :courses
      jsonapi_resources :chapters
      jsonapi_resources :contents
    end
  end
end
