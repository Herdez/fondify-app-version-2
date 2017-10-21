Rails.application.routes.draw do

	  root 'pages#home'

  	get  '/about',   to: 'pages#about'
  	get  '/contact', to: 'pages#contact'
  	
    get    '/signup',  to: 'users#new'
    post   '/signup',  to: 'users#create'


    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
      	
    resources :users

    get   '/registred',  to:'users#registred',  as: 'registred'
    get   '/record',  to:'users#record',  as: 'record'
    post  '/record/user/:id',  to:'users#record_user',  as: 'record_user'
    post  '/users/:id/delete',  to: 'users#delete',  as: 'delete'
    post  '/users/:id/edit', to: 'users#edit', as: 'to_edit'
    get   'users/:id', to: 'users#update', as: 'to_update_user'

    get   '/visitors', to: 'visitors#index',  as: 'index'
    post  '/visitors', to: 'visitors#view',   as: 'view'

    post    '/projects/new',  to: 'projects#new', as: 'project_new'
    # post   '/user/:user_id/projects',  to: 'projects#create', as: 'create_project'
    #get    '/projects/show',  to: 'projects#index', as: 'project_show'
    resources :projects
end
