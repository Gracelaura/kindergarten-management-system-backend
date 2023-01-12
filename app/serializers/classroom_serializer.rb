class ClassroomSerializer < ActiveModel::Serializer
  attributes :id,:name, :students
  has_many :students
  belongs_to :teacher
end
