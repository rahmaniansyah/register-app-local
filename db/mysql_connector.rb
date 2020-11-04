require "sinatra/activerecord"
require 'mysql2'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",
  :host     => "localhost",
  :username => "root",
  :password => "1305438asep",
  :database => "register_app_db"
)

# def create_db_client
    # set :database, "mysql2://root:1305438asep@localhost:4567/register_app_db"
    # client = Mysql2::Client.new(
    #     :host => 'localhost',
    #     :username => 'root',
    #     :password => '1305438asep',
    #     :database => 'register_app_db'
    # )
    # client
# end
