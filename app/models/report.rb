class Report < ActiveRecord::Base
  attr_accessible :age, :breed, :date_of_last_visit, :doctor_id, :name_of_pet, :type_of_pet, :weight, :appointment_id
  belongs_to :appointment
  belongs_to :doctor
end
