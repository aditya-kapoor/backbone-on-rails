Raffler::Application.routes.draw do
  scope "api" do
    resources :entries
  end
  match '*path', to: 'main#index'
  root to: "main#index"
end
