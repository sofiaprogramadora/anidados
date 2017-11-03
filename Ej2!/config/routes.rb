Rails.application.routes.draw do
  resources :groups, path: 'groups' do
	resources :users, path: 'users' do
	  resources :notes, path: 'notes'
	end
  end
  root "groups#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
