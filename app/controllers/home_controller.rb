class HomeController < ApplicationController
  layout 'application'
  def index
    unless current_user
      render :template => "home/common"
    else
      render_user_specific_templates
    end
  end
  
  private
  
  def render_user_specific_templates
    if current_user.is_a? Receptionist
      @appointments = Appointment.all
      render :template => "home/appointments"
    elsif current_user.owner
      @doctors = Doctor.all
      render :template => "home/owner"
    elsif current_user.is_a? Doctor
      @appointments = current_user.appointments.active
      render :template => "home/doctor"
    elsif current_user.is_a? Customer
      @appointments = current_user.appointments
      render :template => "home/customer"
    else
      render :template => "home/common"
    end
  end
end
