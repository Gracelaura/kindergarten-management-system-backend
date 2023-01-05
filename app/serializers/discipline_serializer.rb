class DisciplineSerializer < ActiveModel::Serializer
  attributes :id,:student_id, :title, :description
  belongs_to :student
end
