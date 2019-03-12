Rails.application.routes.draw do
    
    get 'huespedsservicios/index', to: "huespedsservicios#index"
    get 'huespedsservicios/edit', to: "huespedsservicios#edit"
    get 'huespedsservicios/show', to: "huespedsservicios#show"
    get 'huespedsservicios/new', to: "huespedsservicios#new"
    
    root 'pages#welcome'
  
end
