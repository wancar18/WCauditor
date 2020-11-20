class Crossing < ApplicationRecord
  belongs_to :companies
  has_many :companies
end
