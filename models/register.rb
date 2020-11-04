require './db/mysql_connector.rb'

class Register
    attr_accessor :id, :phone_number, :first_name, :last_name, :dob, :gender, :email

    def initialize (phone_number, first_name, last_name, dob = nil, gender = nil, email)
        @phone_number = phone_number
        @first_name = first_name
        @last_name = last_name
        @dob = dob
        @gender = gender
        @email = email
        
    end

    def save
        client = create_db_client
        client.query("INSERT INTO user (phone_number, first_name, last_name, dob, gender, email) VALUES
                     ('#{phone_number}', '#{first_name}', '#{last_name}', '#{dob}', '#{gender}', '#{email}')")
    end
end