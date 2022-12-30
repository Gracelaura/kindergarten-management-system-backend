class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :description, :admission_number, :role 
   has_many :parent_students
end
