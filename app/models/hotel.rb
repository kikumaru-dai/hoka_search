class Hotel < ApplicationRecord
    has_many :categorys
    has_many :locations
end
