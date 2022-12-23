class SingleParentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :phone_number, :password, :role
  has_many :parent_students
  has_many :students, through: :parent_students
end
