class Student < ApplicationRecord
    has_many :parent_students
    has_many :parents, through: :parent_students
    belongs_to :classroom
    has_many :disciplines, dependent: :destroy
end
