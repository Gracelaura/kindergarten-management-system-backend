class SingleStudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :surname :age, :description, :admission_number
  has_many :disciplines
  belongs_to :classroom
end
