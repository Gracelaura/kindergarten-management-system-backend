class ParentStudent < ApplicationRecord
    belongs_to :parent
    belongs_to :student
end
