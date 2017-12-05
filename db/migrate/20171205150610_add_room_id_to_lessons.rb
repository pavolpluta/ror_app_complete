class AddRoomIdToLessons < ActiveRecord::Migration[5.1]
  def change
    add_column :lessons, :room_id, :integer
  end
end
