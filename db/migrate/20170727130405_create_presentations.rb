class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :subject
      t.text :markdown
      t.integer :views
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
