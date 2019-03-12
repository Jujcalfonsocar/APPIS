Rails.application.routes.draw do
    
    get 'huespedsservicios/index', to: "huespedservicios#index"
    get 'huespedsservicios/edit', to: "huespedservicios#edit"
    get 'huespedsservicios/show', to: "huespedservicios#show"
    get 'huespedsservicios/new', to: "huespedservicios#new"
    
    root 'pages#welcome'
  
end
