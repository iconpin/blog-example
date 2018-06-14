class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :email, null: false
      t.text :name, null: false
      t.timestamps
    end

    add_index :authors, :email, unique: true
  end
end
