class ClassroomSerializer < ActiveModel::Serializer
  attributes :id,:name,:students, :attendances
  has_many :attendances
  has_many :students
  belongs_to :teacher
  has_many :parents
  has_many :disciplines
end
