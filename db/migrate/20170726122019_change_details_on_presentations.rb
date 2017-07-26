class ChangeDetailsOnPresentations < ActiveRecord::Migration[5.1]
  def change
    change_column_null :presentations, :subject, false
    change_column_null :presentations, :markdown, false
    change_column_null :presentations, :views, false
    change_column_null :presentations, :subject, false

    add_foreign_key :presentations, :accounts
  end
end
