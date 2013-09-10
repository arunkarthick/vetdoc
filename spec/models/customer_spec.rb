require "spec_helper"

describe Customer do
  it "should return customers users only" do
    FactoryGirl.create(:user, type: "Doctor", email: 'abc@vetdoc.com')
    FactoryGirl.create(:user, type: "Customer", email: 'def@vetdoc.com')
    FactoryGirl.create(:user, type: "Receptionist", email: 'ghi@vetdoc.com')
    
    customers = Customer.all
    expect(customers.size).to eq(1)
    expect(customers.first.is_a? Customer).to eq(true)
  end
end