Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :types
        resources :pets do
          resources :pet_medicaments
          resources :pet_sicknesses
          resources :pet_vaccines
        end
      end
    end
  end
end
