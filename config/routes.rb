Rails.application.routes.draw do
  resources :pets
        # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'index#home'
	get 'home' => 'index#home'
	get 'busca' => 'pets#busca'
	get 'petcadastro' => 'pets#petcadastro'
	resources :pets
	resources :index
end
