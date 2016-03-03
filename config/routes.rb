Rails.application.routes.draw do
  root to: redirect('/domain/welcome')
  
  devise_for :users, controllers: {
    #confirmations: "users/confirmations",
    #omniauth_callbacks: "users/omniauth_callbacks",
    #passwords: "users/passwords",
    registrations: "users/registrations",
    #sessions: "users/sessions",
    #unlocks: "users/unlocks"
  }
  resources :users, param: :username, constraints: { username: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  
  #shallow routing implementation
  resources :bounties, except: [:index], :path => 'bty'
  resources :concepts, except: [:index, :show], :path => 'concept'
  resources :comments, except: [:index, :new], :path => 'com'
  resources :components, except: [:index, :new, :show], :path => 'comp'
  resources :domains, except: [:index, :new, :show], :path => 'domain'
  resources :procedures, except: [:index, :show], :path => 'proc'
  resources :scopes, except: [:index, :new, :show], :path => 'scope'
  resources :submissions, except: [:index, :new], :path => 'sub'
  resources :systems, except: [:index, :new, :show], :path => 'sys'
  resources :tags, except: [:index, :show], :path => 'tag'
  resources :versions, except: [:index, :new, :show], :path => 'vers'
  
  #new routes
  get '/concept/:concept_id/scope', to: 'scopes#new', as: 'new_scope'
  get '/comp/:component_id/proc', to: 'procedures#new', as: 'new_component_procedure'
  get '/domain/:domain_id/dom', to: 'domains#new', as: 'new_domain'
  get '/domain/:domain_id/sys', to: 'systems#new', as: 'new_system'
  get '/proc/:procedure_id/sub', to: 'submissions#new', as: 'new_procedure_submission'
  get '/sub/:submission_id/com', to: 'comments#new', as: 'new_submission_comment'
  get '/sys/:system_id/vers', to: 'versions#new', as: 'new_version'
  get '/vers/:version_id/proc', to: 'procedures#new', as: 'new_version_procedure'
  get '/vers/:version_id/comp', to: 'components#new', as: 'new_component'
  
  #human readable routes
  get '/bountyboard', to: 'bounties#board', as: 'bountyboard'
  get '/domain/:slug', to: 'domains#show'
  get '/concept/:slug', to: 'concepts#show'
  get '/concept/:concept_slug/:slug', to: 'scopes#show', as: 'concept_scope'
  
  get '/:slug/with/:system_slug/:version_slug/:component_slug', to: 'procedures#show', as: 'component_procedure', constraints: { version_slug: /([^\/]+)/ }
  get '/:slug/with/:system_slug/:version_slug/', to: 'procedures#show', as: 'version_procedure', constraints: { version_slug: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  
  get '/sys/:slug', to: 'systems#show'
  get '/sys/:system_slug/:slug', to: 'versions#show', as: 'system_version', constraints: { slug: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  get '/sys/:system_slug/:version_slug/howitworks', to: 'concepts#howitworks', as: 'version_howitworks', constraints: { version_slug: /([^\/]+)/ }
  get '/sys/:system_slug/:version_slug/:slug', to: 'components#show', as: 'version_component', constraints: { version_slug: /([^\/]+)/ }
  get '/sys/:system_slug/:version_slug/:component_slug/howitworks', to: 'concepts#howitworks', as: 'component_howitworks', constraints: { version_slug: /([^\/]+)/ }
  
  get '/:slug', to: 'wildcards#search'
  #get "*any", to: 'wildcards#error404'
end