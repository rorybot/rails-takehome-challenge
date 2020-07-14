class Company < ApplicationRecord
  has_many :buildings, through: :offices
  has_many :offices
  has_many :companies
  has_many :employees
  validates :name, presence: true, length: { minimum: 5 }
end
