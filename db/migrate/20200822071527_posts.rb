class Posts < ActiveRecord::Migration[5.2]
  def change
    drop_table :posts
    drop_table :schedules

  end
end
