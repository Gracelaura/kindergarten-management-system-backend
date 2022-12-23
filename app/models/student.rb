class Student < ApplicationRecord
    belongs_to :grade
    belongs_to :teacher
    has_many :disciplines
end
