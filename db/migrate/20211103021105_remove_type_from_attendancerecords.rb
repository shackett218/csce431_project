class RemoveTypeFromAttendancerecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :attendancerecords, :type, :string
  end
end
