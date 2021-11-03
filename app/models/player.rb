class Player < Person
  validates :dues, presence: true
  validates :status, presence: true

  has_and_belongs_to_many :attendancerecords, optional: true
  

end
