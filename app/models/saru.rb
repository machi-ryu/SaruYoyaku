class Saru < ApplicationRecord
    belongs_to :place
    has_many :reserve
    has_many :users, through: :reserve
end
