require "spec_helper"

describe Receptionist do
  it "should return receptionist users only" do
    FactoryGirl.create(:user, type: "Doctor", email: 'abc@vetdoc.com')
    FactoryGirl.create(:user, type: "Customer", email: 'def@vetdoc.com')
    FactoryGirl.create(:user, type: "Receptionist", email: 'ghi@vetdoc.com')
    
    receptionists = Receptionist.all
    expect(receptionists.size).to eq(1)
    expect(receptionists.first.is_a? Receptionist).to eq(true)
  end
end