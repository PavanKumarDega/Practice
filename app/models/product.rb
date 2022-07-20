class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  has_many :reviews, as: :reviewable
end
