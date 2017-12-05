class Student < ApplicationRecord
  default_scope { order(last_name: :asc) }
  has_many :student_assignments
  has_many :courses, through: :student_assignments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :study_type, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\.]+\.[a-z]+\z/i
  validates :email, presence: true,
            length: {maximum: 100},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}

  before_save :set_course_study_type if :courses

  extend Enumerize

  enumerize :study_type, in: {full_time: 1, part_time: 2}

  def self.search(search)
    where("first_name LIKE ? OR last_name LIKE ?", "%#{search}%", "%#{search}%")
  end

  private
    def set_course_study_type
      self.courses.each do |course|
        course.study_type = self.study_type
      end
    end



end