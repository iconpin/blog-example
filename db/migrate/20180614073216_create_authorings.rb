class CreateAuthorings < ActiveRecord::Migration[5.2]
  def change
    create_table :authorings do |t|
      t.integer :page_id, null: false
      t.integer :author_id, null: false
      t.timestamps
    end
    add_foreign_key :authorings, :pages
    add_foreign_key :authorings, :authors
    add_index :authorings, [:page_id, :author_id], unique: true
  end
end
