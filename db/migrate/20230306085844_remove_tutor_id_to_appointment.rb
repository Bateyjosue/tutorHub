class RemoveTutorIdToAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :tutor_id
  end
end
