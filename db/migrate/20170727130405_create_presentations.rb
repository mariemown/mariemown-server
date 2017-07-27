class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :subject, null: false
      t.text :markdown, null: false
      t.integer :views, null: false, default: 0
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
