class Car < ApplicationRecord
    has_many :parkings
    has_one :user, through: :parkings

end
