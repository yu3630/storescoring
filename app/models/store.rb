class Store < ApplicationRecord
    has_many :users
    belongs_to :area
end
