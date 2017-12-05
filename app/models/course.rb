class Course < ApplicationRecord
  has_many :lessons
  has_many :teacher_assignments
  has_many :teachers, through: :teacher_assignments
  has_many :student_assignments
  has_many :students, through: :student_assignments

  validates :title, presence: true, length: {minimum: 3}
  validates :code, presence: true, length: {minimum: 3, maximum: 10}, uniqueness: {case_sensitive: false}
  validates :language, presence: true
  validates :study_type, presence: true

  before_save {self.title = title.upcase_first}
  before_save {self.code = code.upcase}

  extend Enumerize

  enumerize :language, in: {czech: 1, english: 2}, default: :czech
  enumerize :study_type, in: {full_time: 1, part_time: 2}, default: :full_time


end
