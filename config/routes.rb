Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'job_types/index'
      get 'job_types/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'resumes/index'
      get 'resumes/show'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'users/index'
      get 'users/show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
