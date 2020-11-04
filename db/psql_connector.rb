require 'pg'

begin
    db = PG.connect :dbname => 'register_db', 
                     :user => 'hidayatasep43', 
                     :password => '1305438asep'

    
rescue PG::Error => e
    puts e.message 

ensure
    db.close if db

end