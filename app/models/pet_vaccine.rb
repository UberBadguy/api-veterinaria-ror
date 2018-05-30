class PetVaccine < ApplicationRecord
    belongs_to :pet
    belongs_to :vaccine
end
