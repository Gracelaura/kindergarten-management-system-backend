class Parent < ApplicationRecord
    has_many :parent_students
    has_many :students, through: :parent_students

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :password, length: {minimum: 5}
    validates :phone_number, length: {maximum: 10}
    validates :role, presence: true 
end
