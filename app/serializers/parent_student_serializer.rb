class ParentStudentSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :parent
  belongs_to :student
end
