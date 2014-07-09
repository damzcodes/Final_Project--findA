class RemoveEmailAndPasswordFromPastors < ActiveRecord::Migration
  def change
    remove_column :pastors, :email, :string
    remove_column :pastors, :password, :string
  end
end
