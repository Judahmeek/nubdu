Rails.application.routes.draw do
  
  devise_for :users
  resources :users, param: :username, constraints: { username: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  
  #shallow implementation
  resources :components, only: [:edit, :update, :destroy], :path => 'comp'
  resources :concepts, except: [:index, :show], :path => 'concept'
  resources :domains, except: [:index, :show], :path => 'domain'
  resources :procedures, only: [:edit, :update, :destroy], :path => 'proc'
  resources :scopes, only: [:edit, :update, :destroy], :path => 'scope'
  resources :systems, except: [:index, :show], :path => 'system'
  resources :versions, only: [:edit, :update, :destroy], :path => 'vers'
  
  #resources whose urls should never be seen
  resources :domain_categories, except: :index, :path => 'dc'
  resources :procedure_submissions, except: :index, :path => 'ps'
  resources :procedure_submission_comments, except: :index, :path => 'psc'
  
  #slugfest
  resources :domains, only: :show, :path => 'domain', param: :slug
  resources :concepts, only: :show, :path => 'concept', param: :slug do
    resources :scopes, only: [:new, :create, :show], :path => '', param: :slug
  end
  
  get '/:slug/with/:system_slug/:version_slug/:component_slug', to: 'procedures#show', as: 'system_version_component_procedure', constraints: { version_slug: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  get '/:slug/with/:system_slug/:version_slug/', to: 'procedures#show', as: 'system_version_procedure', constraints: { version_slug: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  
  resources :systems, only: :show, :path => '', param: :slug do
    resources :versions, only: [:new, :create], :path => 'vers'
    resources :versions, only: :show, :path => '', param: :slug, constraints: { slug: /([^\/]+?)(?=\.json|\.html|$|\/)/ } do
      get '/howitworks', to: 'behaviors#show', as: 'howitworks'
      resources :procedures, only: [:new, :create], :path => 'proc'
      resources :components, only: [:new, :create, :show], :path => '', param: :slug do
        get '/howitworks', to: 'behaviors#show', as: 'howitworks'
        resources :procedures, only: [:new, :create], :path => 'proc'
      end
    end
  end
end