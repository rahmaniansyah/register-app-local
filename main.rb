require 'sinatra'
require "sinatra/activerecord"
require './controllers/user_controller.rb'

get "/" do
  controller = UserController.new
  controller.index

  @user = User.all

  puts '----------'
  puts @user
  puts '----------'
end

get "/show" do
    controller = UserController.new
    controller.show
end

post "/" do
    controller = UserController.new
    controller.add_user(params)
end