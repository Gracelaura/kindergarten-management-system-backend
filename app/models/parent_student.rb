class ParentStudent < ApplicationRecord
    belongs_to :student
    belongs_to :parent
end
