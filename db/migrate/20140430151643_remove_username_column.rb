class RemoveUsernameColumn < ActiveRecord::Migration
  def change
  	remove_column(:authors, :username)
  end
end
