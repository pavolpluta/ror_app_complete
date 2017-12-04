class Building < ApplicationRecord
  has_many :rooms, dependent: :destroy
  before_save {self.code = code.upcase}

  validates :title, presence: true,
            length: { minimum: 3, maximum: 50},
            uniqueness: true
  validates :code, presence: true,
            length: {minimum: 3},
            uniqueness: {case_sensitive: false}

end