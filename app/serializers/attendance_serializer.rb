class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :student_name, :student_id, :status, :date
end
