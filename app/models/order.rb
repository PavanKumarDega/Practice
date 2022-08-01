class Order < ApplicationRecord
  belongs_to :custmor
  has_many :items
end
