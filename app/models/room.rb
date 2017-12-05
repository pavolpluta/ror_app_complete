class Room < ApplicationRecord
  belongs_to :building
  has_many :lessons, dependent: :destroy
  before_save {self.title = title.upcase_first}
  before_save {self.code = building.code + "_" + code.upcase}

  validates :title, presence: true,
            length: { minimum: 3, maximum: 50},
            uniqueness: {case_sensitive: false}
  validates :code, presence: true,
            length: {minimum: 2},
            uniqueness: {case_sensitive: false}
  validates :building_id, presence: true


end