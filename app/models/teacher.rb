class Teacher < ApplicationRecord
    has_many :students
    has_many :grades, through: :students
    has_many :attendances

    validates :email, presence: true, uniqueness: true
    validates :fullname, presence: true
    validates :career_name, presence: true
    validates :password, length: {minimum: 5}
    validates :phone_number, length: {maximum: 10}
    validates :gender, presence: true
    validates :role, presence: true
end
