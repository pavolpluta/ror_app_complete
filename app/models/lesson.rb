class Lesson < ApplicationRecord
  belongs_to :room
  belongs_to :teacher
  before_save {self.duration = ((self.end_at - self.start_at)/60).to_i}

  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :room_id, presence: true
  validates :teacher_id, presence: true

  validate :during_one_day
  validate :start_must_be_before_end


  private
    def start_must_be_before_end
      valid = start_at && end_at && (start_at < end_at)
        errors.add(:start_at, "must be before End at") unless valid
    end

    def during_one_day
      if start_at.day != end_at.day
        errors.add(:start_at, " and end time must occur within one day")
      end
    end
end