Rails.application.routes.draw do
   root 'pages#home'
   
   # ------ Pages ------

   get "about" => "pages#about", as: :about

   get "news" => "pages#news", as: :news

   get "edital" => "pages#edital", as: :edital  

   get "contact" => "pages#contact", as: :contact

   get "infos" => "pages#infos", as: :infos

   get "transparency" => "pages#transparency", as: :transparency

   # ------ Noticias ------

   get "galery" => "noticias#galery", as: :galery

   get 'outubroRosa' => 'noticias#outubroRosa', as: :outubroRosa

   get 'novembroAzul' => 'noticias#novembroAzul', as: :novembroAzul

   resources :contacts, only: [:new, :create]
   
   get "pdf" => "pages#pdf", as: :pdf

   get "pdff" => "pages#pdff", as: :pdff
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
