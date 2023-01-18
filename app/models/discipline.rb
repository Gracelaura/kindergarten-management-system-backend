class Discipline < ApplicationRecord
    belongs_to :student
    validates :student_id, :title, :date, :description, presence: true
end
