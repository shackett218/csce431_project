class CreateAttendancesPlayersJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :attendancerecords, :players
  end
end
