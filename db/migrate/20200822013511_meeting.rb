class Meeting < ActiveRecord::Migration[5.2]
  def change
    drop_table :meetings
    drop_table :stamps

  end
end
