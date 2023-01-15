class DisciplineSerializer < ActiveModel::Serializer
  attributes :id,:student_id, :title, :date, :description
  belongs_to :student
end
