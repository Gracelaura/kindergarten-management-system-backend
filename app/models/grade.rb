class Grade < ApplicationRecord
    has_many :students
    has_many :attendances
    has_many :teachers, through: :students
end
