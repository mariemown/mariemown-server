class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
    	t.string :subject
    	t.text :markdown
    	t.integer :views

      t.timestamps
    end
  end
end
