class Amostra < ApplicationRecord
  belongs_to :balancetes
  has_one :balancetes
end
