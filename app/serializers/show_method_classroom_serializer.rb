class ShowMethodClassroomSerializer < ActiveModel::Serializer
  attributes :id,:name
  has_many :students
  has_many :attendances
end
