class AddmapIdToAtds < ActiveRecord::Migration[5.2]
  def change
    add_column :atds, :map_id, :integer
    
  end
end
