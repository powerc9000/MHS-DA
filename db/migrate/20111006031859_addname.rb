class Addname < ActiveRecord::Migration
  def up
  	add_column :users, :fname, :text
    add_column :users, :lname, :text
    change_column :users, :username,:text, :unique => true, :case_sensitive =>false
  end

  def down
  end
end
