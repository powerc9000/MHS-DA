class Addpass < ActiveRecord::Migration
  def up
  	change_table :users do |t|
  		t.string :password
  	end
  end

  def down
  end
end
