class AddColumToMetaverses < ActiveRecord::Migration[6.1]
  def change
    add_column :metaverses, :principal_picture, :string, default: "https://stylistme.com/wp-content/uploads/2022/02/Metaverse-guide-tuto.png"
  end
end
