class Company < ApplicationRecord
  has_many :buildings, through: :offices
  has_many :offices
end
