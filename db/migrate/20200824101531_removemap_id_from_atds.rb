class RemovemapIdFromAtds < ActiveRecord::Migration[5.2]
  def change
        remove_column :atds, :map_id, :integer

  end
end
