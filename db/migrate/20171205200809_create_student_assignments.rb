class CreateStudentAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :student_assignments do |t|
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
