class Appointment < ActiveRecord::Base
  attr_accessible :customer_id, :date_of_visit, :doctor_id, :pet, :reason_for_visit, :reminder_required
  belongs_to :doctor
  belongs_to :customer
  has_one :report
  scope :active, -> { where("date_of_visit > ?", Time.now)}
  
  validates :date_of_visit, :pet, :customer_id, :reason_for_visit, :presence => true
  validate :past_date_check
  
  private
  def past_date_check
   if date_of_visit && date_of_visit < Time.now
     errors.add(:base, "Date cannot be in the past")
   end
  end
end
