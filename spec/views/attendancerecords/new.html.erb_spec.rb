require 'rails_helper'

RSpec.describe "attendance_records/new", type: :view do
  before(:each) do
    assign(:attendance_record, AttendanceRecord.new())
  end

  it "renders new attendance_record form" do
    render

    assert_select "form[action=?][method=?]", attendance_records_path, "post" do
    end
  end
end
