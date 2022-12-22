class Teacher < ApplicationRecord
    has_many :grades
    has_many :students, through: :grades
    has_many :attendances

    validates :email, presence: true, uniqueness: true
    validates :fullname, presence: true
    validates :career_name, presence: true
    validates :password, length: {minimum: 5}
    validates :phone_number, length: {maximum: 10}
    validates :gender, presence: true
    validates :role, presence: true
end
