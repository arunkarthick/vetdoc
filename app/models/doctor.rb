class Doctor < User
  has_many :appointments
  has_many :customers, :through => :appointments
  has_many :reports
end