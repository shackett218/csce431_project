require 'rails_helper'

RSpec.describe "attendance_records/edit", type: :view do
  before(:each) do
    @attendance_record = assign(:attendance_record, AttendanceRecord.create!())
  end

  it "renders the edit attendance_record form" do
    render

    assert_select "form[action=?][method=?]", attendance_record_path(@attendance_record), "post" do
    end
  end
end
