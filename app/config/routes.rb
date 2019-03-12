Rails.application.routes.draw do
    
    get 'huespedsservicios/index', to: "huespedsServicios#index"
    get 'huespedsservicios/edit', to: "huespedsServicios#edit"
    get 'huespedsservicios/show', to: "huespedsServicios#show"
    get 'huespedsservicios/new', to: "huespedsServicios#new"
    
    root 'pages#welcome'
  
end
