require 'sinatra'
require "sinatra/activerecord"
require './controllers/user_controller.rb'

get "/user-register" do
  controller = UserController.new
  controller.index

end

post "/user-register" do
    controller = UserController.new(params)
    controller.add_user
    # dob = [params["year"], params["month"], params["date"]].join('-')
    # controller.add_user(params)
    # controller.add_user(params["phone_number"], params["first_name"], 
    #                     params["last_name"], dob, params["gender"], params["email"])
end