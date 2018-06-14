class ChangePagesAuthorIdNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :pages, :author_id, false
  end
end
