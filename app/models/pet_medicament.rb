class PetMedicaments < ApplicationRecord
    belongs_to :pet
    belongs_to :medicaments
end
