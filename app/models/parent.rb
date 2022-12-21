class Parent < ApplicationRecord
    has_many :parent_students
    has_many :students, through: :parent_students
end
