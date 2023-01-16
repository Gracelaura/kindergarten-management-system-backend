class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :second_name,:surname, :age, :description, :admission_number,:parents
  has_many :parents
end
