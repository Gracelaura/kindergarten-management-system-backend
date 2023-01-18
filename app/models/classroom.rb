class Classroom < ApplicationRecord
    belongs_to :teacher
    has_many :students, dependent: :destroy
    has_many :attendances, dependent: :destroy 
    has_many :parents, through: :students
    has_many :disciplines, through: :students
    validates :teacher_id, presence: true
end
