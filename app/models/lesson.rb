class Lesson < ApplicationRecord
  default_scope { order(:start_at) }
  belongs_to :room
  belongs_to :teacher
  belongs_to :course

  before_save {self.duration = ((self.end_at - self.start_at)/60).to_i}

  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :room_id, presence: true
  validates :teacher_id, presence: true
  validates :course_id, presence: true

  validate :during_one_day
  validate :start_must_be_before_end
  validate :time_overlapping
  validate :teacher_overlapping

  def self.day(datetime)
    day = datetime.strftime("%A")
    return day
  end

  private
    def start_must_be_before_end
      valid = start_at && end_at && (start_at < end_at)
        errors.add(:start_at, "must be sooner") unless valid
    end

    def during_one_day
      unless (start_at && end_at) && (start_at.day == end_at.day) && (start_at.month == end_at.month) && (start_at.year == end_at.year)
        errors.add(:start_at, "must be within the same day as 'end at'")
      end
    end

    def time_overlapping
      lessons = Lesson.where.not(id: self.id)
      lessons.each do |lesson|
        if lesson.room == self.room
          if (lesson.start_at..lesson.end_at).overlaps?(self.start_at..self.end_at)
            errors.add(:room,"is taken at this time.")
            break
          end
        end
      end
    end

    def teacher_overlapping
      lessons = Lesson.where.not(id: self.id)
      lessons.each do |lesson|
        if (lesson.start_at..lesson.end_at).overlaps?(self.start_at..self.end_at)
          if lesson.teacher == self.teacher
            errors.add(:teacher, "is unavailable at this time.")
          end
        end
      end
    end
end