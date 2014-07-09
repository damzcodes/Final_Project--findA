class RemoveIndexFromChurches < ActiveRecord::Migration
  def change
  	remove_index :churches, :email         
    remove_index :churches, :reset_password_token
  end
end
