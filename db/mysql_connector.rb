require 'mysql2'

def create_db_client
    client = Mysql2::Client.new(
        :host => 'localhost',
        :username => 'root',
        :password => '1305438asep',
        :database => 'register_app_db'
    )
    client
end
