class User < ApplicationRecord
    belongs_to :type
    has_many :pets
end
