Rails.application.routes.draw do
  root 'welcome#index'
  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphiql"

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphiql"
  end



  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
