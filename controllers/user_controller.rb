require './models/user'

class UserController
    
    def index
        renderer = ERB.new(File.read("./views/index.erb"))
        renderer.result(binding)  
    end

    def add_user(params)
       
        raw_dob = [params["year"], params["month"], params["date"]]
        dob = raw_dob.join('-') if raw_dob.all?
        user = User.new(phone_number: params["phone_number"], first_name: params["first_name"], 
                        last_name: params["last_name"], dob: dob, gender: params["gender"], email: params["email"])
        
        if user.valid?
            user.save!
            @user_valid = true
        else
            @messages = user.errors.messages
        end
        
        renderer = ERB.new(File.read("./views/index.erb"))
        renderer.result(binding)
    
    end
end