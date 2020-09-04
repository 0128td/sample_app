class AddmapIdToEvents < ActiveRecord::Migration[5.2]
  def change
      add_column :events, :map_id, :integer
        
  end
end
