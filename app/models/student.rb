class Student < ApplicationRecord
    belongs_to :grade
    belongs_to :teacher
    has_many :disciplines
    has_many :parent_students
    has_many :parents, through: :parent_students
end
