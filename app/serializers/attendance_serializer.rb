class AttendanceSerializer < ActiveModel::Serializer
  attributes :student_name, :status, :date
 
end
