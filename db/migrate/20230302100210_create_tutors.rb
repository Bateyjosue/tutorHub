class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :image
      t.string :description
      t.decimal :price
      t.string :city
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
