Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show ] do
    resources :projects, only:[ :new, :create, :show, :index]
    resources :user_skills, only: [ :create, :update]
  end


  resources :projects, only: [  :destroy, :edit, :update] do
    resources :jobs, only: [ :create]
    resources :host_reviews, only: [:create]
  end

  resources :jobs, only: [ ] do
    resources :job_review, only: [ :create ] do
      resources :response, only: [:create]
    end
  end

  resources :response, only: [:destroy, :update]

  resources :pages, only: [:show]
end
