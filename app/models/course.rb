class Course < ApplicationRecord
  belongs_to :account
  has_and_belongs_to_many :payments
end
