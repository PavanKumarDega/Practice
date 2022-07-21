class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders
  has_and_belongs_to_many :admins
end
