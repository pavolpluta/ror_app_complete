class AddTeacherIdToLessons < ActiveRecord::Migration[5.1]
  def change
  end
  add_column :lessons, :teacher_id, :integer
end
