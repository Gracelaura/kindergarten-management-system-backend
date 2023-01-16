class TeacherLoginSerializer < ActiveModel::Serializer
  attributes :id, :first_name,:last_name, :career_name, :phone_number, :email, :gender,:students
  has_one :classroom
  has_many :students
end
