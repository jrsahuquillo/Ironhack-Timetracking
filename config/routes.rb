Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'site#home'

  get'/contact', to: 'site#contact'

  get'/calculator', to: 'site#calculator'

  post '/calculate', to: 'site#calculate'

  get '/projects', to: 'projects#index'

  get '/projects/new', to: 'projects#new'

  get '/projects/:id', to: 'projects#show' #Params request goes always below of all.

  #get '/projects/:cualquier_variable', to: 'projects#loquesea' #Returns error, can´t be the same URI.

  post '/projects', to: 'projects#create'

  get '/projects/:project_id/time_entries', to: 'time_entries#index'

end
