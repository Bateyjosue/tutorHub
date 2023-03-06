class AddrefToAppointment < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :user_id, :integer, index: true, foreign_key: true
    add_column :appointments, :tutor_id, :integer, index: true, foreign_key: true
  end
end
