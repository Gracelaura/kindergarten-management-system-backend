class Teacher < ApplicationRecord
    has_secure_password
    validates :first_name,:last_name,:email,:career_name,:phone_number,:password, presence: true
    validates :email, uniqueness: true
    validates :career_name, presence: true, uniqueness: true
    validates :password, length: {minimum: 5}
    validates :phone_number, length: {maximum: 10}
    validates :gender, presence: true
    has_one :classroom
    has_many :students, through: :classroom 
     has_many :disciplines, through: :students


end
