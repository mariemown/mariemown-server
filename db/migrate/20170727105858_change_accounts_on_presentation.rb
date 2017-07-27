class ChangeAccountsOnPresentation < ActiveRecord::Migration[5.1]
  def change
  	change_column_null :presentations, :accounts_id, false
  end
end
