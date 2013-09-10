require "spec_helper"

describe Doctor do
  it "should return doctor users only" do
    FactoryGirl.create(:user, type: "Doctor", email: 'abc@vetdoc.com')
    FactoryGirl.create(:user, type: "Customer", email: 'def@vetdoc.com')
    FactoryGirl.create(:user, type: "Receptionist", email: 'ghi@vetdoc.com')
    
    doctors = Doctor.all
    expect(doctors.size).to eq(1)
    expect(doctors.first.is_a? Doctor).to eq(true)
  end
end