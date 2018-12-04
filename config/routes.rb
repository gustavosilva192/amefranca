Rails.application.routes.draw do
  resources :articles
  resources :remuneracaos
  get 'users/new'
   root 'pages#home'
   
   # ------ Pages ------

   get "about" => "pages#about", as: :about

   get "news" => "pages#news", as: :news

   get "edital" => "pages#edital", as: :edital  

   get "contact" => "pages#contact", as: :contact

   get "infos" => "pages#infos", as: :infos

   get "transparency" => "pages#transparency", as: :transparency

   get "intranet" => "pages#intranet", as: :intranet

   # ------ Noticias ------

   get "galery" => "noticias#galery", as: :galery

   get 'outubroRosa' => 'noticias#outubroRosa', as: :outubroRosa

   get 'novembroAzul' => 'noticias#novembroAzul', as: :novembroAzul

   # ------ Users ------

   get "signup"  => "users#new", as: :signup

   get 'list' => 'users#list', as: :list

   get '/login' => 'sessions#new'
   
   post 'login' => 'sessions#create'
   
   delete 'logout' => 'sessions#destroy'

   resources :users
   
   patch 'users/update'
   
   get 'users/show'
   
   get 'users/edit'
   
   get 'users/delete'
   
   get 'users/update'

   # ----- Frames intranet---------

   get "qualidade" => "frames#qualidade", as: :qualidade

   get "humanizacao" => "frames#humanizacao", as: :humanizacao

   get "treinamentos" => "frames#treinamentos", as: :treinamentos

   get "compras" => "frames#compras", as: :compras

   get "patrimonio" => "frames#patrimonio", as: :patrimonio

   get "comissoes" => "frames#comissoes", as: :comissoes

   

   resources :contacts, only: [:new, :create]
   
   get "pdf" => "pages#pdf", as: :pdf

   get "pdff" => "pages#pdff", as: :pdff
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
