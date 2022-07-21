class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
  has_many :sells
  has_many :admins, through: :sells
  has_many :reviews, as: :reviewable
end
