Rails.application.routes.draw do
  get 'noticias/galery'
  get 'pages/transparency'
   root 'pages#home'
   
   get "about" => "pages#about", as: :about

   get "news" => "pages#news", as: :news

   get "edital" => "pages#edital", as: :edital  

   get "contact" => "pages#contact", as: :contact

   get "infos" => "pages#infos", as: :infos

   get "transparency" => "pages#transparency", as: :transparency

   get "galery" => "noticias#galery", as: :galery
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
