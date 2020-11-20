class Company < ApplicationRecord
    belongs_to :auditories
    has_one :balancestes
    has_one :account_planies
    has_many :crossings
end
