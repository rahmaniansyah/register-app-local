require "sinatra/activerecord"
require './db/mysql_connector.rb'

class User < ActiveRecord::Base
    validates :phone_number, :email, uniqueness: true, allow_nil: false
    # validates :first_name, :last_name, allow_nil: false

    user = User.new
    user.valid?
    user.errors
    
end