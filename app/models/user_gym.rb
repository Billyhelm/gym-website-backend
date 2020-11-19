class UserGym < ApplicationRecord
    belongs_to :gym 
    belongs_to :user 
end
