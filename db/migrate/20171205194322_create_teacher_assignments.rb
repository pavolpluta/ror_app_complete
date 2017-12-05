class CreateTeacherAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :teacher_assignments do |t|
       t.integer :teacher_id
       t.integer :course_id

       t.timestamps
    end
  end
end
