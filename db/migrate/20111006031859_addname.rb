class Addname < ActiveRecord::Migration
  def up
  	
    change_table :users do |t|
      
      t.text  :fname
     
      t.text  :lname
      t.text  :house
        
      t.integer  :rank
      t.text :photo
      
    end
   change_column :users, :email, :unique => true, :case_sensitive =>false
   change column :users, :username, :unique => true, :case_sensitive =>false
  end

  def down
  end
end
