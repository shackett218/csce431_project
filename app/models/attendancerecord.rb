class Attendancerecord < ApplicationRecord
  has_and_belongs_to_many :players
  belongs_to :event
  validates :attendancetype, presence: true
  validates :note, presence: true
end
