class CreateAtds < ActiveRecord::Migration[5.2]
  def change
    create_table :atds do |t|
      t.integer :event_id
      t.integer :user_id
      t.integer :attendance
      t.text :memo

      t.timestamps
    end
  end
end
