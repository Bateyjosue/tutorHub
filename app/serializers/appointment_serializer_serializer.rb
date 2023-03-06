class AppointmentSerializerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :date, :location
  belongs_to :user
  belongs_to :tutor
end
