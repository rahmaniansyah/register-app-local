require './db/psql_connector.rb'

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
end