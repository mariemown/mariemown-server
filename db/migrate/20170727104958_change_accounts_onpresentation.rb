class ChangeAccountsOnpresentation < ActiveRecord::Migration[5.1]
  def change
  	add_reference :presentations, :accounts, index: true, foreign_key: true
  end
end
