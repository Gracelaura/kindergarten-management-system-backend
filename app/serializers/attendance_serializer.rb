class AttendanceSerializer < ActiveModel::Serializer
  attributes :teacher_id, :student_name, :status, :date
end
