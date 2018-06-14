class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.text :title, null: false
      t.text :text, null: false
      t.boolean :published, null: false, default: false
      t.timestamps
    end

    add_index :pages, :title, unique: true
  end
  # NOTE: you could use #up and #down
end
