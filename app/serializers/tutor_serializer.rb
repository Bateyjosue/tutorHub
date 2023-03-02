class TutorSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :image, :description, :price, :city

  belongs_to :user
end
