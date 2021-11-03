class CreateAttendancerecords < ActiveRecord::Migration[6.1]
  def change
    create_table :attendancerecords do |t|
      t.text :note
      t.string :attendancetype
      t.timestamps
    end
  end
end
