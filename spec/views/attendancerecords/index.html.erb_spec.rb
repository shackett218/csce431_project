require 'rails_helper'

RSpec.describe "attendance_records/index", type: :view do
  before(:each) do
    assign(:attendance_records, [
      AttendanceRecord.create!(),
      AttendanceRecord.create!()
    ])
  end

  it "renders a list of attendance_records" do
    render
  end
end
