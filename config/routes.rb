Rails.application.routes.draw do

  get "/contacts" => "contact#index"

  get "/contact/new" => "contact#new"

  post "/contacts" => "contact#create"

end
