class Custmor < ApplicationRecord
  has_many :orders
  has_many :items, through: :orders
  has_many :addtresses
end
