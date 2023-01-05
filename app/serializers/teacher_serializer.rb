class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :first_name,:last_name, :career_name, :phone_number, :password, :email, :gender
end
