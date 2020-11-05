require './models/user'

class UserController
    def initialize
        # @phone_number = params["phone_number"]
        # @first_name = params["first_name"]
        # @last_name = params["last_name"]
        # @dob = [params["year"], params["month"], params["date"]].join('-')
        # @gender = params["gender"]
        # @email = params["email"]
    end
    
    def index
        renderer = ERB.new(File.read("./views/index.erb"))
        renderer.result(binding)  
    end

    def add_user(params)
       
        # @user = User.new(phone_number: @phone_number, first_name: @first_name, 
        #                 last_name: @last_name, dob: @dob, gender: @gender, email: @email)
        dob = [params["year"], params["month"], params["date"]].join('-')
        user = User.new(phone_number: params["phone_number"], first_name: params["first_name"], 
                        last_name: params["last_name"], dob: dob, gender: params["gender"], email: params["email"])
        
        # @user.save!
        if user.valid?
            user.save!
            # redirect "/people/#{@person.id}"
        else
            @messages = user.errors.messages
            renderer = ERB.new(File.read("./views/index.erb"))
            renderer.result(binding)
        end
    
        # user = User.new(params["phone_number"], params["first_name"], 
        #                 params["last_name"], dob, params["gender"], params["email"])
        # user.save

    end
end