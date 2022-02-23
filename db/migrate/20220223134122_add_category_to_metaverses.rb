class AddCategoryToMetaverses < ActiveRecord::Migration[6.1]
  def change
    add_column :metaverses, :category, :string
  end
end
