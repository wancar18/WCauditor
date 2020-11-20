class Balancete < ApplicationRecord
  belongs_to :companies
  has_one :companies
  belongs_to :amostras
end
