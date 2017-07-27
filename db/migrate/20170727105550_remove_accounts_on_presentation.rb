class RemoveAccountsOnPresentation < ActiveRecord::Migration[5.1]
  def change
  	remove_column :presentations, :account_id
  end
end
