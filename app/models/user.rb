class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
=======
  has_many :parkings, dependent: :destroy
>>>>>>> 449b8dd1bd4d651b821ee9cbb3e06beb9ac494a4
  has_many :cars, dependent: :destroy
end
