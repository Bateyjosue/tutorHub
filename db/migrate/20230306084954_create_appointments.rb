class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :location
      t.integer :user_id
      t.integer :tutor_id

      t.timestamps
    end
  end
end
