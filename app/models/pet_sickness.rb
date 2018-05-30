class PetSickness < ApplicationRecord
    belongs_to :pet
    belongs_to :sickness
end
