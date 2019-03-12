Rails.application.routes.draw do
    
    get 'huespedsservicios/index', to: "huespedsservicio#index"
    get 'huespedsservicios/edit', to: "huespedsservicio#edit"
    get 'huespedsservicios/show', to: "huespedsservicio#show"
    get 'huespedsservicios/new', to: "huespedsservicio#new"
    
    root 'pages#welcome'
    
    resources :huespeds
    resources :huespedsservicios
    resources :servicios
    resources :empleados
    
end
