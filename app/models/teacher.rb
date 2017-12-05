class Teacher < ApplicationRecord
  has_many :lessons
  has_many :teacher_assignments
  has_many :courses, through: :teacher_assignments

  validates :first_name, presence: true
  validates :last_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\.]+\.[a-z]+\z/i

  validates :email, presence: true,
            length: {maximum: 100},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}

end