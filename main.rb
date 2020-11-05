require 'sinatra'
require "sinatra/activerecord"
require './controllers/user_controller.rb'

get "/user-register" do
  controller = UserController.new
  controller.index

end

get "/home" do
  renderer = ERB.new(File.read("./views/login_page.erb"))
  renderer.result(binding)
end

post "/user-register" do
  controller = UserController.new
  controller.add_user(params)
end