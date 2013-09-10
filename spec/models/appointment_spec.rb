require "spec_helper"

describe Appointment do
  it "cannot have date of visit in past" do
    appointment = FactoryGirl.build(:appointment, date_of_visit: Date.yesterday)
    expect(appointment.valid?).to eq(false)
  end
  
  it "will be invalid if data_of_visit is empty" do
    appointment = FactoryGirl.build(:appointment, date_of_visit: nil)
    expect(appointment.valid?).to eq(false)
  end
end