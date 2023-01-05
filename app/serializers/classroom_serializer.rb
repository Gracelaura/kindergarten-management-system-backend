class ClassroomSerializer < ActiveModel::Serializer
  attributes :id,:name,:teacher
  has_many :students
  belongs_to :teacher
end
