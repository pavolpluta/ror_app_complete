class Teacher < ApplicationRecord
  default_scope { order(last_name: :asc) }
  has_many :lessons, dependent: :destroy
  has_many :teacher_assignments
  has_many :courses, through: :teacher_assignments

  validates :first_name, presence: true
  validates :last_name, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\.]+\.[a-z]+\z/i

  validates :email, presence: true,
            length: {maximum: 100},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}

  def self.search(search)
    where("first_name LIKE ? OR last_name LIKE ? or first_name || ' ' || last_name LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end


end