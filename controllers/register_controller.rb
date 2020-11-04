require './models/register'

class RegisterController
    
    def index
        renderer = ERB.new(File.read("./views/index.erb"))
        renderer.result(binding)  
    end
end