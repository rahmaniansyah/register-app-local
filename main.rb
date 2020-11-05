require 'sinatra'
require "sinatra/activerecord"
require './controllers/user_controller.rb'

get "/user-register" do
  controller = UserController.new
  controller.index

end

post "/user-register" do
    controller = UserController.new
    controller.add_user(params)
end