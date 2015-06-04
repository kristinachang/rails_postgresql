Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }

  root to: 'site#index'
  get '/about', to: 'site#about', as: 'about'
  get '/contact', to: 'site#contact', as: 'contact'

  #get '/clients/:id', to: 'clients#show'
  #get '/trainers/:id', to: 'trainers#show'

  get '/profile', to: 'users#show', as: 'profile'
  get '/profile/edit', to: 'users#edit', as: 'edit_profile'

  shallow do
    resources :trainers do
      resources :clients do
        resources :programs do
          resources :exercises do
            resources :media 
          end
        end
      end
    end
  end

=begin
                  Prefix Verb   URI Pattern                                   Controller#Action
        new_user_session GET    /users/sign_in(.:format)                      devise/sessions#new
            user_session POST   /users/sign_in(.:format)                      devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                     devise/sessions#destroy
           user_password POST   /users/password(.:format)                     devise/passwords#create
       new_user_password GET    /users/password/new(.:format)                 devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)                devise/passwords#edit
                         PATCH  /users/password(.:format)                     devise/passwords#update
                         PUT    /users/password(.:format)                     devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)                       registrations#cancel
       user_registration POST   /users(.:format)                              registrations#create
   new_user_registration GET    /users/sign_up(.:format)                      registrations#new
  edit_user_registration GET    /users/edit(.:format)                         registrations#edit
                         PATCH  /users(.:format)                              registrations#update
                         PUT    /users(.:format)                              registrations#update
                         DELETE /users(.:format)                              registrations#destroy

                    root GET    /                                             site#index
                   about GET    /about(.:format)                              site#about
                 contact GET    /contact(.:format)                            site#contact

                 profile GET    /profile(.:format)                            users#show
            edit_profile GET    /profile/edit(.:format)                       users#edit

          exercise_media GET    /exercises/:exercise_id/media(.:format)       media#index
                         POST   /exercises/:exercise_id/media(.:format)       media#create
     new_exercise_medium GET    /exercises/:exercise_id/media/new(.:format)   media#new
             edit_medium GET    /media/:id/edit(.:format)                     media#edit
                  medium GET    /media/:id(.:format)                          media#show
                         PATCH  /media/:id(.:format)                          media#update
                         PUT    /media/:id(.:format)                          media#update
                         DELETE /media/:id(.:format)                          media#destroy

       program_exercises GET    /programs/:program_id/exercises(.:format)     exercises#index
                         POST   /programs/:program_id/exercises(.:format)     exercises#create
    new_program_exercise GET    /programs/:program_id/exercises/new(.:format) exercises#new
           edit_exercise GET    /exercises/:id/edit(.:format)                 exercises#edit
                exercise GET    /exercises/:id(.:format)                      exercises#show
                         PATCH  /exercises/:id(.:format)                      exercises#update
                         PUT    /exercises/:id(.:format)                      exercises#update
                         DELETE /exercises/:id(.:format)                      exercises#destroy

         client_programs GET    /clients/:client_id/programs(.:format)        programs#index
                         POST   /clients/:client_id/programs(.:format)        programs#create
      new_client_program GET    /clients/:client_id/programs/new(.:format)    programs#new
            edit_program GET    /programs/:id/edit(.:format)                  programs#edit
                 program GET    /programs/:id(.:format)                       programs#show
                         PATCH  /programs/:id(.:format)                       programs#update
                         PUT    /programs/:id(.:format)                       programs#update
                         DELETE /programs/:id(.:format)                       programs#destroy

         trainer_clients GET    /trainers/:trainer_id/clients(.:format)       clients#index
                         POST   /trainers/:trainer_id/clients(.:format)       clients#create
      new_trainer_client GET    /trainers/:trainer_id/clients/new(.:format)   clients#new
             edit_client GET    /clients/:id/edit(.:format)                   clients#edit
                  client GET    /clients/:id(.:format)                        clients#show
                         PATCH  /clients/:id(.:format)                        clients#update
                         PUT    /clients/:id(.:format)                        clients#update
                         DELETE /clients/:id(.:format)                        clients#destroy
                         
                trainers GET    /trainers(.:format)                           trainers#index
                         POST   /trainers(.:format)                           trainers#create
             new_trainer GET    /trainers/new(.:format)                       trainers#new
            edit_trainer GET    /trainers/:id/edit(.:format)                  trainers#edit
                 trainer GET    /trainers/:id(.:format)                       trainers#show
                         PATCH  /trainers/:id(.:format)                       trainers#update
                         PUT    /trainers/:id(.:format)                       trainers#update
                         DELETE /trainers/:id(.:format)                       trainers#destroy
=end

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
