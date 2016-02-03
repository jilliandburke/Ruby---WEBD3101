Lab2Engine::Engine.routes.draw do
  resources :messages do
    resources :comments
  end
end
