require "rails_helper"

RSpec.describe AttendanceRecordsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/attendance_records").to route_to("attendance_records#index")
    end

    it "routes to #new" do
      expect(get: "/attendance_records/new").to route_to("attendance_records#new")
    end

    it "routes to #show" do
      expect(get: "/attendance_records/1").to route_to("attendance_records#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/attendance_records/1/edit").to route_to("attendance_records#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/attendance_records").to route_to("attendance_records#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/attendance_records/1").to route_to("attendance_records#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/attendance_records/1").to route_to("attendance_records#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/attendance_records/1").to route_to("attendance_records#destroy", id: "1")
    end
  end
end
