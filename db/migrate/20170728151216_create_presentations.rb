class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.string :title, null: false
      t.text :markdown, null: false
      t.integer :views, default: 0, null: false
      t.boolean :published, null: false
      t.boolean :private, null:false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
