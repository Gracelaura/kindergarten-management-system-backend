class SingleParentSerializer < ActiveModel::Serializer
  attributes :id,:first_name, :last_name, :phone_number, :password
  has_many :students
end
