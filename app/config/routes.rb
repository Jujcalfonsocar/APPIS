Rails.application.routes.draw do
    
     get 'huespedsservicios/edit', to: "huespedservicios#peppopig"
    root 'pages#welcome'
  
end
