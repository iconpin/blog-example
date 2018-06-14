class UseAuthoringsInsteadOfAuthorId < ActiveRecord::Migration[5.2]
  def up
    # NOTE: find_each uses batches
    Page.find_each do |page|
      Authoring.create!(page_id: page.id, author_id: page.author_id)
    end

    # NOTE: in a prod environment you would do this in another migration
    remove_column :pages, :author_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
