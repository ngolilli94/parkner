class Car < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
    has_many :parkings
=======
    has_many :parkings, dependent: :destroy
>>>>>>> 449b8dd1bd4d651b821ee9cbb3e06beb9ac494a4
end
