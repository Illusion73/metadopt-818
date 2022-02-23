class RemovePrincipalPictureFromMetaverses < ActiveRecord::Migration[6.1]
  def change
    remove_column :metaverses, :principal_picture
  end
end
