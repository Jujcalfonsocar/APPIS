Rails.application.routes.draw do
    
    get 'solicitudes/index', to: "solicitudes#index"
    get 'solicitudes/edit', to: "solicitudes#edit"
    get 'solicitudes/show', to: "solicitudes#show"
    get 'solicitudes/new', to: "solicitudes#new"
    
    root 'pages#welcome'
    
    resources :huespeds
    resources :solicitudes
    resources :servicios
    resources :empleados
    
end
