class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :user_id, NULL: false
      t.integer :picture_id, NULL: false

      t.timestamps
    end
  end
end
