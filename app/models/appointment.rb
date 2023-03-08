class Appointment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :tutor, class_name: 'Tutor', foreign_key: 'tutor_id'

  validates :location, presence: true
  validates :date, presence: true
end
