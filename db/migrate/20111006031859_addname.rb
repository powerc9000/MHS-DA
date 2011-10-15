class Addname < ActiveRecord::Migration
  def up
  	
    create_table :users do |t|
      
      t.text  :fname
      t.text  :username, :string, :unique => true, :case_sensitive =>false
      t.text  :lname
      t.text  :house
      t.text :email, :unique => true, :case_sensitive =>false
      t.integer  :rank
      t.text :photo
      
    end
   
   
  end

  def down
  end
end
