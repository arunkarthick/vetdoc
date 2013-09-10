class AddAppointmentId < ActiveRecord::Migration
  def up
    add_column :reports, :appointment_id, :integer
  end

  def down
    remove_column :reports, :appointment_id
  end
end
