class AddColumnStamps < ActiveRecord::Migration[5.2]
  def change
    add_column :stamps, :date, :date
    
  end
end
