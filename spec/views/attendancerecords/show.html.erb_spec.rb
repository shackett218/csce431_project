require 'rails_helper'

RSpec.describe "attendance_records/show", type: :view do
  before(:each) do
    @attendance_record = assign(:attendance_record, AttendanceRecord.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
