require './models/register'

class RegisterController
    
    def index
        renderer = ERB.new(File.read("./views/index.erb"))
        renderer.result(binding)  
    end

    def add_user(params)
        phone_number = params["phone_number"]
        first_name = params["first_name"]
        last_name = params["last_name"]
        dob = [params["year"], params["month"], params["date"]].join('-')
        gender = params["gender"]
        email = params["email"]

        user = Register.new(phone_number, first_name, last_name, dob, gender, email)
        user.save

    end
end