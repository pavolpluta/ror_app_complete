class Room < ApplicationRecord
  belongs_to :building
  before_save {self.code = code.upcase}

  validates :title, presence: true,
            length: { minimum: 3, maximum: 50},
            uniqueness: {case_sensitive: false}
  validates :code, presence: true,
            length: {minimum: 2},
            uniqueness: {case_sensitive: false}
  validates :building_id, presence: true


end