class Dog < ApplicationRecord
  has_many :strolls
	has_many :dogsitters, through: :strolls

  has_many :cities
  has_many :dogsitters, through: :cities
  
  # belongs_to :city
end
