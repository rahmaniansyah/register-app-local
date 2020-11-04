require 'sinatra'
require './controllers/register_controller.rb'

get "/" do
  controller = RegisterController.new
  controller.index
end

get "/show" do
    controller = RegisterController.new
    controller.show
end

post "/" do
    controller = RegisterController.new
    controller.add_user(params)
end