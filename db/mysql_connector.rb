require "sinatra/activerecord"
require 'mysql2'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "root",
  :password => "1305438asep",
  :database => "register_app_db"
)