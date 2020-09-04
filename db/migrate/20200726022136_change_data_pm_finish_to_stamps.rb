class ChangeDataPmFinishToStamps < ActiveRecord::Migration[5.2]
  def change
    change_column :stamps, :start, :datetime
    change_column :stamps, :am_finish, :datetime
    change_column :stamps, :pm_start, :datetime
    change_column :stamps, :finish, :datetime
    
  end
end
