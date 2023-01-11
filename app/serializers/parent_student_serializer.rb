class ParentStudentSerializer < ActiveModel::Serializer
  attributes :id, :parent_id, :student_id
end
