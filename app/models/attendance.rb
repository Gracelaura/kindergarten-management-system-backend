class Attendance < ApplicationRecord
    belongs_to :classroom

    validates :classroom_id,:student_id, :student_name, :status, :date,  presence: true
end
