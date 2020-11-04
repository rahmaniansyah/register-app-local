class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :phone_number, :null => false, :uniqueness => true
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.date :dob
      t.string :gender
      t.string :email, :null => false, :uniqueness => true

    end
  end
end
