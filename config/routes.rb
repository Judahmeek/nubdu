Rails.application.routes.draw do
  devise_for :users
  resources :users, param: :username, constraints: { username: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
  get '/domain', to: 'domains#new', as: 'new_domain'
  post '/domain', to: 'domains#create'
  resources :domains, only: [:show, :edit, :update, :destroy], :path => 'domain', param: :slug
  
  get '/concept', to: 'concepts#new', as: 'new_concept'
  post '/concept', to: 'concepts#create'
  resources :concepts, only: [:show, :update, :destroy], :path => 'concept', param: :slug do
    get '/edit', to: 'concepts#edit', as: 'edit_concept_path'
    resources :scopes, except: :index, :path => '', param: :slug
  end
  resources :domain_categories, except: :index
  
  get '/system', to: 'systems#new', as: 'new_system'
  post '/system', to: 'systems#create'
  resources :systems, only: [:show, :update, :destroy], :path => 'system', param: :slug do
    get '/edit', to: 'systems#edit', as: 'edit_system_path'
    get '/version', to: 'versions#new'
    post '/version', to: 'versions#create'
    resources :versions, only: [:show, :update, :destroy], :path => '', param: :slug, constraints: { slug: /([^\/]+?)(?=\.json|\.html|$|\/)/ } do
      get '/edit', to: 'versions#edit', as: 'edit_version_path'
      get '/howitworks', to: 'behaviors#show'
      get '/proc', to: 'procedures#new', as: 'new_system_version_procedure_path'
      post '/proc', to: 'procedures#create'
      resources :components, except: :index, :path => '', param: :slug do
        get '/howitworks', to: 'behaviors#show'
        get '/proc', to: 'procedures#new', as: 'new_component_procedure_path'
        post '/proc', to: 'procedures#create'
      end
    end
  end
  
  resources :procedure_submissions, except: :index, :path => 'ps'
  resources :procedure_submission_comments, except: :index, :path => 'psc'
  

  resources :procedures, only: [], :path => '', param: :slug do
    get '/', to: 'procedures#index'
    resources :procedures, only: [], :path => 'with', param: :system do
      resources :procedures, only:[:index, :show, :destroy], :path => '', param: :version, constraints: { version: /([^\/]+?)(?=\.json|\.html|$|\/)/ }
    end
  end
end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
