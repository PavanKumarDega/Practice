class Employee < ApplicationRecord
  has_many :review_companies, as: :reviewable
  belongs_to :Company
  belongs_to :domain
end
