Rails.application.routes.draw do
  root to: "messages#new"
  post "/messages", to: "messages#create"
end