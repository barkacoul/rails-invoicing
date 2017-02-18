Rails.application.routes.draw do
    root 'sessions#new'
    #routes pour tva
    get 'utilisateur/:utilisateur_id/tva/' => 'tva#index'
    get 'utilisateur/:utilisateur_id/tva/new' => 'tva#new'
    post 'utilisateur/:utilisateur_id/tva/create' => 'tva#create'
    
    #routes pour clients
    get 'utilisateur/:utilisateur_id/clients/' => 'clients#index'
    get 'utilisateur/:utilisateur_id/client/new' => 'clients#new'
    get 'utilisateur/:utilisateur_id/client/:id/factures' => 'clients#facture'
    post 'utilisateur/:utilisateur_id/client/create' => 'clients#create'
    get 'utilisateur/:utilisateur_id/client/:id' => 'clients#show', constraints: { id: /\d+/ }
    get 'utilisateur/:utilisateur_id/client/:id/edit' => 'clients#edit'
    patch 'utilisateur/:utilisateur_id/client/:id' => 'clients#update', constraints: { id: /\d+/ }
    delete 'utilisateur/:utilisateur_id/client/:id' => 'clients#destroy', constraints: { id: /\d+/ }
    
    #routes pour fournisseurs
    get 'utilisateur/:utilisateur_id/fournisseurs/' => 'fournisseurs#index'
    get 'utilisateur/:utilisateur_id/fournisseur/new' => 'fournisseurs#new'
    get 'utilisateur/:utilisateur_id/fournisseur/:id/produits' => 'fournisseurs#produit'
    post 'utilisateur/:utilisateur_id/fournisseur/create' => 'fournisseurs#create'
    get 'utilisateur/:utilisateur_id/fournisseur/:id' => 'fournisseurs#show', constraints: { id: /\d+/ }
    get 'utilisateur/:utilisateur_id/fournisseur/:id/edit' => 'fournisseurs#edit'
    patch 'utilisateur/:utilisateur_id/fournisseur/:id' => 'fournisseurs#update', constraints: { id: /\d+/ }
    delete 'utilisateur/:utilisateur_id/fournisseur/:id' => 'fournisseurs#destroy', constraints: { id: /\d+/ }
    
    #routes pour produits
    get 'utilisateur/:utilisateur_id/produits/' => 'produits#index'
    get 'utilisateur/:utilisateur_id/produit/new' => 'produits#new'
    post 'utilisateur/:utilisateur_id/produit/create' => 'produits#create'
    get 'utilisateur/:utilisateur_id/produit/:id' => 'produits#show', constraints: { id: /\d+/ }
    get 'utilisateur/:utilisateur_id/produit/:id/edit' => 'produits#edit'
    patch 'utilisateur/:utilisateur_id/produit/:id' => 'produits#update', constraints: { id: /\d+/ }
    delete 'utilisateur/:utilisateur_id/produit/:id' => 'produits#destroy', constraints: { id: /\d+/ }
    
    #routes pour factures
    get 'utilisateur/:utilisateur_id/factures/' => 'factures#index'
    get 'utilisateur/:utilisateur_id/facture/new' => 'factures#new'
    post 'utilisateur/:utilisateur_id/facture/create' => 'factures#create'
    get 'utilisateur/:utilisateur_id/factures/:id' => 'factures#show', constraints: { id: /\d+/ }
    get 'utilisateur/:utilisateur_id/facture/:id/edit' => 'factures#edit'
    patch 'utilisateur/:utilisateur_id/facture/:id' => 'factures#update', constraints: { id: /\d+/ }
    delete 'utilisateur/:utilisateur_id/facture/:id' => 'factures#destroy', constraints: { id: /\d+/ }
    #routes pour utilisateurs
    
    #get 'utilisateurs' => 'utilisateurs#new'
    get 'utilisateur/:id' => 'utilisateurs#show', constraints: { id: /\d+/ }
    get 'utilisateur/new' => 'utilisateurs#new'
    post 'utilisateur/create' => 'utilisateurs#create'
    get 'utilisateur/:id/edit' => 'utilisateurs#edit'
    patch 'utilisateur/:id' => 'utilisateurs#update', constraints: { id: /\d+/ }
    delete 'utilisateur/:id' => 'utilisateurs#destroy', constraints: { id: /\d+/ }
    
    #routes pour sessions
    get 'session/new' => 'sessions#new'
    post 'session/create' => 'sessions#create'
    delete 'session/destroy' => 'sessions#destroy'
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
end
