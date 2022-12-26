class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :fullname, :career_name, :phone_number, :password, :role, :email, :gender
end
