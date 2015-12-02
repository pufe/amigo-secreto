Rails.application.routes.draw do
#  mount RailsAdmin::Engine => '/pufowns', as: 'rails_admin'
  root to: 'mural#listar'
  get '/admin' => 'static#rickroll'
  get '/xelinhos' => 'static#rickroll'
  get '/pufowns' => 'static#rickroll'
  get '/:id' => 'mural#mostrar', as: 'mural'
  post '/:id' => 'mural#adicionar', as: 'enviar'
  get '/(*id)' => 'mural#listar'
end
