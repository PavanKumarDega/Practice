class Admin < ApplicationRecord
  has_many :sells
  has_many :products, through: :sells
  has_and_belongs_to_many :users
end
