# NOTES ON ROUTES
# 
# PURPOSE 
# Route paths of application. The Rails router recognizes URLs and dispatches them to a controller's action, or to a Rack application.
# Ex. GET /patients/17 request matches to get '/patients/:id', to: 'patients#show'.
#
# RESOURCES 
# Maps all of the conventional routes for a collection of resources, 
# such as articles. 
# A single call to resources can declare all of the necessary routes for your 
# index, show, new, edit, create, update, and destroy actions.
#
# NESTING
# Brings clarity to relationship of interdependant models.
# You can define more than one resource in a single line.
# You can nest resources within other nested resources.
# You can shallow nest/restrict realtionships through only: [:arguments]
# or, through shallow.
# In this routes.rb comments is a "nested resource" within articles.
# 
# TO STUDY
# Shallow nesting, routing concerns, paths and URLs from objects, redirection,
# restful routing, customization, translation (language) of routes, inspection.
#
#
#
Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/about'
  resources :restaurants
  root 'articles#index'
  resources :articles do
    resources :comments
  end
end
