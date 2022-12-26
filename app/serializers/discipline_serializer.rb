class DisciplineSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :title, :description
end
