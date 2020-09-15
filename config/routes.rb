Rails.application.routes.draw do
  resources :blogs
  root to: "blogs#index"

  if Rails.env.development?
   mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphiql"
 end
end
