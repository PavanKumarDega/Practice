class Company < ApplicationRecord
  has_many :review_companies, as: :reviewable
  has_many :employees
end
