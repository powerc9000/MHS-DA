class Addname < ActiveRecord::Migration
  def up
  	
    change_table :users do |t|
      
      t.text  :fname
      
      t.text  :lname
      t.text  :house
      t.text :email, :unique => true, :case_sensitive =>false
      t.integer  :rank
      t.text :photo
      
    end
   
   change_column :users, :username, :string, :unique => true, :case_sensitive =>false
  end

  def down
  end
end
