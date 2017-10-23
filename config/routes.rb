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

    delete  '/projects/:id/delete',  to: 'projects#destroy',  as: 'destroy_project'
    post  '/projects/:id/edit', to: 'projects#edit', as: 'edit_project'
    post   '/projects/:id', to: 'projects#update', as: 'update_project'

    get   '/visitors', to: 'visitors#index',  as: 'index'
    post  '/visitors', to: 'visitors#view',   as: 'view'

    get    '/projects/new',  to: 'projects#new', as: 'project_new'
    get   '/projects/registered',  to: 'projects#registered', as: 'show_projects'
    get    '/projects/:id/info',  to: 'projects#info', as: 'info_project'
    resources :projects
end
