class AddAuthorToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :author_id, :integer, null: true
    add_foreign_key :pages, :authors
  end
end
