class RenameAddressColumnToMaps < ActiveRecord::Migration[5.2]
  def change
    rename_column :maps, :address, :map_comment

  end
end
