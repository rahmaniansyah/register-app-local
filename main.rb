require 'sinatra'
require './controllers/register_controller.rb'

get "/" do
  controller = RegisterController.new
  controller.index
end