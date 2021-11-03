class AddForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_reference :attendancerecords, :event, index: true
    add_foreign_key :attendancerecords, :events
  end
end
