class AddAttendancetypeToAttendancerecords < ActiveRecord::Migration[6.1]
  def change
    add_column :attendancerecords, :attendancetype, :string
  end
end
