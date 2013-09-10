FactoryGirl.define do
  factory :appointment do
    pet 'test'
    date_of_visit Date.tomorrow
    customer_id 1
    doctor_id 2
    reminder_required true
    reason_for_visit 'test'
  end
end